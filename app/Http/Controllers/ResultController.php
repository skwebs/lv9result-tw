<?php

namespace App\Http\Controllers;

use App\Http\Requests\StoreResultRequest;
use App\Models\Result;
use App\Models\AdmitCard;
use Illuminate\Http\Request;
use SimpleSoftwareIO\QrCode\Facades\QrCode;

class ResultController extends Controller
{
    private $lower_classes;
    private $exist_classes;

    private $financialYear;

    public function __construct()
    {
        $this->lower_classes = ['Play', 'Nursery', 'LKG', 'UKG'];
        $this->exist_classes = AdmitCard::distinct()->orderBy('class_order')->pluck('class');
        $this->financialYear = '2024-2025'; //$this->financialYear();
    }

    public function financialYear()
    {
        $currentYear = date('Y');
        $currentMonth = date('m');

        // Determine financial year
        if ($currentMonth > 4) {
            $startYear = $currentYear;
            $endYear = $currentYear + 1;
        } else {
            $startYear = $currentYear - 1;
            $endYear = $currentYear;
        }
        return "{$startYear}-{$endYear}";
        // $financialYear = $startYear . '-' . substr($endYear, -2);

    }
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index(Request $request)
    {
        $result = AdmitCard::with('result');
        if ($class = $request->query('class')) {
            $result->where('class', $class);
        }

        if ($request->has('o')) {
            $result->orderBy($request->query('o'), $request->query('t'));
        }
        //$r = $results->get();

        //$stu = Result::with('admitCard')->get();
        //$results = AdmitCard::with('result')->get();
        $results = $result->get();

        $classes = $this->exist_classes;

        return view('results.index', compact('results', 'classes'));
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create(Request $req)
    {
        $stu = AdmitCard::find($req->query('stu_id'));
        $classes = $this->lower_classes;
        $redirect_to = $req->query('redirect_to');
        return view('results.create', compact('stu', 'classes'));
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    // public function store(Request $request)
    public function store(StoreResultRequest $request)
    {
        // dd($request->all());
        $data = [
            'admit_card_id' => $request->admit_card_id,
            'session' => $this->financialYear,
            'class' => $request->query('class'),
            'roll' => $request->query('roll'),
            'marks' => $request->only([
                'hindi',
                'english',
                'maths',
                'drawing',
                'science',
                'sst',
                'computer',
                'gk',
                'science_oral',
                'sst_oral',
            ]),
            'total' => $request->total,
            'total_text' => $request->total,
            'full_marks' => $request->full_marks,
            'uploaded_by_id' => auth()->user()->id,
        ];

        $r = Result::where([
            'session' => $this->financialYear,
            'class' => $request->query('class'),
            'roll' => $request->query('roll')
        ])->first();

        if ($r) {
            return redirect($request->query('redirect_to'))
                ->with('warning', 'Result already has uploaded!');
        };

        Result::create($data);
        return redirect($request->query('redirect_to'))
            ->with('success', 'Result uploaded successfully!');
    }

    /**
     * Display the specified resource.
     *
     * @param  \App\Models\Result  $result
     * @return \Illuminate\Http\Response
     */
    public function show(Result $result)
    {
        // $stu = $result->with('admitCard'); //->admitCard;
        // dd($stu->get());
        $stu = AdmitCard::find($result->admit_card_id);
        $classes = $this->lower_classes;
        return view('results.tw_result', compact('result', 'stu', 'classes'));
    }

    // public function show(Result $result)
    // {
    // 	//$stu=$result->with('admitCard')->first();//->admitCard;
    // 	$stu = AdmitCard::find($result->admit_card_id);
    // 	$classes = $this->classes;
    // 	return view('results.show', compact('result', 'stu', 'classes'));
    // }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  \App\Models\Result  $result
     * @return \Illuminate\Http\Response
     */
    public function edit(Result $result)
    {
        $stu = AdmitCard::find($result->admit_card_id);
        $classes = $this->lower_classes;
        return view('results.edit', compact('result', 'stu', 'classes'));
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\Models\Result  $result
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, Result $result)
    {
        //dd($request->query());
        $request->validate([
            'admit_card_id' => 'numeric',
            'hindi' => 'numeric',
            'english' => 'numeric',
            'maths' => 'numeric',
            'drawing' => 'numeric',
            'total' => 'numeric',
            'full_marks' => 'numeric',
        ]);

        if (!in_array($request->query('class'), $this->lower_classes)) {
            $request->validate([
                'science' => 'numeric',
                'sst' => 'numeric',
                'science_oral' => 'numeric',
                'sst_oral' => 'numeric',
                'computer' => 'numeric',
                'gk' => 'numeric',
            ]);
        }

        $data = [
            'admit_card_id' => $request->admit_card_id,
            'session' => $this->financialYear,
            'class' => $request->query('class'),
            'roll' => $request->query('roll'),
            'marks' => $request->only([
                'hindi',
                'english',
                'maths',
                'drawing',
                'science',
                'sst',
                'computer',
                'gk',
                'science_oral',
                'sst_oral',
            ]),
            'total' => $request->total,
            'total_text' => $request->total,
            'full_marks' => $request->full_marks,
            'uploaded_by_id' => auth()->user()->id,
        ];
        //dd($data);
        $result->update($data);

        //return redirect()->route('result.index')
        return redirect($request->query('redirect_to'))
            ->with('success', 'Result updated successfully!');

        // old
        /*		$request->mergeIfMissing(['updated_by_id' => auth()->user()->id]);

        $request->validate([
	        'hindi'=>'numeric',
	        'english'=>'numeric',
	        'maths'=>'numeric',
	        'drawing'=>'numeric',
	        'science'=>'numeric|nullable',
	        'social_science'=>'numeric|nullable',
	        'computer'=>'numeric|nullable',
	        'total'=>'numeric',
	        'full_marks'=>'numeric',
        ]);

        $result->update($request->only([
	        'hindi','english',
	        'maths','drawing','science','social_science',
	        'computer','gk','total','full_marks','updated_by_id',
        ]));

        return redirect()->route('result.index')->with('success','Result updated successfully!');
    */
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\Models\Result  $result
     * @return \Illuminate\Http\Response
     */


    public function stu_result(Request $req)
    {
        $class = $this->exist_classes;
        return view('results.stu_result', compact('class'));
    }
    public function get_student_rolls(Request $req)
    {
        //$r=Result::select('roll')->where(['class'=>'Play'])->orderBy('roll')->get();
        if ($req->stu_class == "") {
            return '<span class="text-danger">Please select a class</span>';
        }
        $result_count =  Result::select('id', 'roll')->where(['class' => $req->stu_class])->count();
        if (!$result_count > 0) {
            return '<span class="text-danger">This class has no result.</span>';
        }

        $rolls = Result::select('id', 'roll')->where(['class' => $req->stu_class])->orderBy('roll')->get();
        $select = '<label for="select-roll">Roll No.</label>';
        $select .= '<select id="select-roll" class="form-select">';
        $select .= '<option value="" selected disabled >Select Roll No.</option>';

        foreach ($rolls as $roll) {
            // $select .= '<option value="' . $roll->id . '" >' . $roll->roll . '</option>';
            $select .= "<option value=\"$roll->id\" >$roll->roll</option>";
        }
        $select .= '</select>';
        return $select;
    }

    public function show_result(Request $request)
    {
        $result = Result::find($request->id);
        $stu = AdmitCard::find($result->admit_card_id);
        $classes = $this->lower_classes;
        return view('results.student_result_page', compact('result', 'stu', 'classes'));
    }
    public function print_marksheet($id)
    {
        $result = Result::find($id);
        $stu = AdmitCard::find($result->admit_card_id);
        $classes = $this->lower_classes;
        // return view('results.student_result_page', compact('result', 'stu', 'classes'));
        return view('results.tw_result', compact('result', 'stu', 'classes'));
    }



    public function set_stu_position(Request $request)
    {
        $classes = $this->exist_classes;
        $result_instance = new Result;

        $table = "<style type=\"text/css\">
		    h2{
		    	margin:0;
		    	padding:0;
		    }
		    table, th, td {
		    	border: 1px solid black;
		    	border-collapse: collapse;
		    	padding:2px;
		    }
		    </style>";
        $table .= "<table>";
        foreach ($classes as $class) {
            $table .= "<tr><th colspan=\"6\"><h2>{$class}.</h2></th></tr>";
            $position = 1;
            $results = $result_instance->with('admitCard')->where(['class' => $class])->orderByDesc('total')->get();
            $table .= "<tr><th>Position</th>
			    <th>Name</th>
			    <th>Mother</th>
			    <th>Father</th>
			    <th>Roll No.</th><th>Marks</th>";
            foreach ($results as $result) {
                $table .= "<tr><td>{$result->position}</td>
				    <td>{$result->admitCard->name}</td>
				    <td>{$result->admitCard->mother}</td>
				    <td>{$result->admitCard->father}</td>
				    <td>{$result->admitCard->roll}</td><td>{$result->total}</td></tr>";
                if ($request->query('set') === 'position') {
                    $resultUpdate = Result::find($result->id);
                    $resultUpdate->position = $position;
                    $resultUpdate->update();
                    $position++;
                }
            }
            $table .= "</tr>";
        }
        $table .= "</table>";
        echo $table;
    }

    public function all_result()
    {
        $results = Result::with('admitCard')
            ->orderBy('class')
            ->orderBy('position')
            ->get();

        $classes = $this->lower_classes;


        return view('results.tw_all_result', compact('results', 'classes'));
        // return view('results.all_result', compact('results', 'classes'));
    }

    public function validate_result_field(StoreResultRequest $request)
    {
        $request->validated();
    }
}
