<?php
//$r = (array) $result;echo json_encode($r);exit;

function numToText($num)
{
    $ones = [
        0 => 'zero',
        1 => 'one',
        2 => 'two',
        3 => 'three',
        4 => 'four',
        5 => 'five',
        6 => 'six',
        7 => 'seven',
        8 => 'eight',
        9 => 'nine',
        10 => 'ten',
        11 => 'eleven',
        12 => 'twelve',
        13 => 'thirteen',
        14 => 'fourteen',
        15 => 'fifteen',
        16 => 'sixteen',
        17 => 'seventeen',
        18 => 'eighteen',
        19 => 'nineteen',
        '014' => 'fourteen',
    ];
    $tens = [
        0 => 'zero',
        1 => 'ten',
        2 => 'twenty',
        3 => 'thirty',
        4 => 'forty',
        5 => 'fifty',
        6 => 'sixty',
        7 => 'seventy',
        8 => 'eighty',
        9 => 'ninety',
    ];
    $hundreds = ['hundred', 'thousand', 'million', 'billion', 'trillion', 'quardrillion']; /*limit t quadrillion */
    if ($num == 0) {
        return $ones[0];
    } else {
        $num = number_format($num, 2, '.', ',');
        $num_arr = explode('.', $num);
        $wholenum = $num_arr[0];
        $decnum = $num_arr[1];
        $whole_arr = array_reverse(explode(',', $wholenum));
        krsort($whole_arr, 1);
        $rettxt = '';
        foreach ($whole_arr as $key => $i) {
            while (substr($i, 0, 1) == '0') {
                $i = substr($i, 1, 5);
            }
            if ($i < 20) {
                /* echo "getting:".$i; */
                $rettxt .= $ones[$i];
            } elseif ($i < 100) {
                if (substr($i, 0, 1) != '0') {
                    $rettxt .= $tens[substr($i, 0, 1)];
                }
                if (substr($i, 1, 1) != '0') {
                    $rettxt .= ' ' . $ones[substr($i, 1, 1)];
                }
            } else {
                if (substr($i, 0, 1) != '0') {
                    $rettxt .= $ones[substr($i, 0, 1)] . ' ' . $hundreds[0];
                }
                if (substr($i, 1, 1) != '0') {
                    $rettxt .= ' ' . $tens[substr($i, 1, 1)];
                }
                if (substr($i, 2, 1) != '0') {
                    $rettxt .= ' ' . $ones[substr($i, 2, 1)];
                }
            }
            if ($key > 0) {
                $rettxt .= ' ' . $hundreds[$key] . ' ';
            }
        }
        if ($decnum > 0) {
            $rettxt .= ' and ';
            if ($decnum < 20) {
                $rettxt .= $ones[$decnum];
            } elseif ($decnum < 100) {
                $rettxt .= $tens[substr($decnum, 0, 1)];
                $rettxt .= ' ' . $ones[substr($decnum, 1, 1)];
            }
        }
        return $rettxt;
    }
}
?>



<?php

function res($m)
{
    if ($m >= 91) {
        return [
            'g' => 'A+',
            'r' => 'Result is excellent. Keep it up.',
            'c' => 'success text-light',
        ];
    } elseif ($m >= 81) {
        return [
            'g' => 'A',
            'r' => 'Result is best but need keep it up.',
            'c' => 'success text-light',
        ];
    } elseif ($m >= 71) {
        return [
            'g' => 'B+',
            'r' => 'Result is better Need improve & keep it up.',
            'c' => 'success text-light',
        ];
    } elseif ($m >= 61) {
        return [
            'g' => 'B',
            'r' => 'Result is good but not fair. Increase hard work.',
            'c' => 'warning',
        ];
    } elseif ($m >= 51) {
        return [
            'g' => 'C+',
            'r' => 'Result is average! Increase hard work.',
            'c' => 'warning',
        ];
    } elseif ($m >= 41) {
        return [
            'g' => 'C',
            'r' => 'Result is below to average. Do hard work to improve it.',
            'c' => 'warning',
        ];
    } elseif ($m >= 33) {
        return [
            'g' => 'D',
            'r' => 'Result is poor. Need much hard work to improve it.',
            'c' => 'danger text-light',
        ];
    } else {
        return [
            'g' => 'E',
            'r' => 'Result is very poor. Need very much hard work to improve it.',
            'c' => 'danger text-light',
        ];
    }
}

?>


<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Marksheet : Anshu Memorial Academy</title>
    {{-- <link rel="stylesheet" href="paper2.css" /> --}}
    <link href="{{ asset('css/paper2.css') }}" rel="stylesheet">
    {{-- <script src="./tailwindcss-dev-3.4.3.js"></script> --}}
    <script src="{{ asset('js/tailwindcss-dev-3.4.3.js') }}"></script>
    <!-- <script src="https://cdn.tailwindcss.com"></script> -->
    <link rel="preconnect" href="https://fonts.googleapis.com" />
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin />
    <link
        href="https://fonts.googleapis.com/css2?family=Roboto:ital,wght@0,100;0,300;0,400;0,500;0,700;0,900;1,100;1,300;1,400;1,500;1,700;1,900&display=swap"
        rel="stylesheet" />

    <link href="https://fonts.googleapis.com/css?family=Nunito" rel="stylesheet" />
    <style>
        * {
            font-family: Nunito, Roboto, Helvetica, Georgia, Arial, sans-serif,
                Comic Sans MS, Calibri;
        }
    </style>
    <style>
        @page {
            size: A4;
        }
    </style>
    <style>
        .main-content {
            /* background: url("./ama-128x128-0.15.webp") center/60px 60px round; */
            background: url("{{ asset('images/static/ama-128x128-0.15.webp') }}") center/60px 60px round;
        }

        /* tbody tr th:first-child {
        text-align: left;
      } */
    </style>
</head>

<body class="A4">
    @foreach ($results as $result)
        @php
            $qrData = '';
            $qrData = "Name: {$result->admitCard->name},\n";
            $qrData .= "Father's Name: {$result->admitCard->father},\n";
            $qrData .= "Mother: {$result->admitCard->mother},\n";
            $qrData .= "Session: {$result->session},\n";
            $qrData .= "Class: {$result->admitCard->class}, Roll: {$result->admitCard->roll},\n";
            $qrData .= "Obtained Marks: {$result->total}/{$result->full_marks},\n";
            $qrData .= "Position in class: {$result->position}\n";
            $qrData .= 'marks:';

            $marks = (array) $result->marks;
            $qrData .= json_encode($marks);
        @endphp
        <!-- page -->
        <section class="sheet p-4 flex flex-col">
            <!-- main content -->
            <div class="main-content border-2 border-black h-full flex flex-col">
                <!-- header details -->
                <div class="flex justify-between px-2">
                    <div class="font-semibold">Estd. : 2017</div>
                    <div class="flex-grow font-semibold text-center">
                        AN ISO 9001:2015 CERTIFIED SCHOOL
                    </div>
                    <div class="font-semibold">Reg. No. 054631</div>
                </div>
                <!-- header name -->
                <div class="flex justify-between px-2 py-2">
                    <div>
                        {{-- <img width="84" src="./ama300.webp" alt="logo" /> --}}
                        <img width="84" src="{{ asset('images/static/ama300.webp') }}" alt="logo" />
                    </div>
                    <div class="flex-grow flex flex-col text-center">
                        <div class="font-semibold text-4xl font-[roboto,helvetica]">
                            Anshu Memorial Academy
                        </div>
                        <div class="font-semibold">
                            Bhatha Chowk, Bhatha Dasi, Rajapakar, Vaishali
                        </div>
                        <div class="text-sm">
                            Run & Managed by AnitaBindeshwar Foundation (Regd. under Company
                            Act 2013)
                        </div>
                    </div>
                    <div>
                        {{-- <img width="84" src="./bbbp300.webp" alt="beti bachao beti padhao" /> --}}
                        <img width="84" src="{{ asset('images/static/bbbp300.webp') }}"
                            alt="beti bachao beti padhao" />
                    </div>
                </div>
                <!-- padding -->
                <div class="p-0">
                    <!-- result type -->
                    <div>
                        <div class="w-full text-center border-t-2 border-black">
                            <div>REPORT CARD [ANNUAL EXAMINATION]</div>
                            <div>SESSION 2023-2024</div>
                        </div>
                    </div>
                    <!-- student details -->
                    <div>
                        <div class="w-full border-t-2 border-black py-2 px-4">
                            <div class="flex gap-x-2">
                                <div class="flex-grow">
                                    <table class="w-full text-left">
                                        <tr>
                                            <th class="px-3 py-2 whitespace-nowrap">Name</th>
                                            <td class="px-3 py-2 whitespace-nowrap">:</td>
                                            <td class="px-3 py-2 whitespace-nowrap">
                                                {{ $result->admitCard->name }}</td>
                                            <th class="px-3 py-2 whitespace-nowrap">Class</th>
                                            <td class="px-3 py-2 whitespace-nowrap">:</td>
                                            <td class="px-3 py-2 whitespace-nowrap">{{ $result->admitCard->class }}</td>
                                        </tr>
                                        <tr>
                                            <th class="px-3 py-2 whitespace-nowrap">Mother's Name</th>
                                            <td class="px-3 py-2 whitespace-nowrap">:</td>
                                            <td class="px-3 py-2 whitespace-nowrap">{{ $result->admitCard->mother }}
                                            </td>
                                            <th class="px-3 py-2 whitespace-nowrap">Roll No.</th>
                                            <td class="px-3 py-2 whitespace-nowrap">:</td>
                                            <td class="px-3 py-2 whitespace-nowrap">{{ $result->admitCard->roll }}</td>
                                        </tr>
                                        <tr>
                                            <th class="px-3 py-2 whitespace-nowrap">Father's Name</th>
                                            <td class="px-3 py-2 whitespace-nowrap">:</td>
                                            <td class="px-3 py-2 whitespace-nowrap">{{ $result->admitCard->father }}
                                            </td>
                                            <th class="px-3 py-2 whitespace-nowrap">Section</th>
                                            <td class="px-3 py-2 whitespace-nowrap">:</td>
                                            <td class="px-3 py-2 whitespace-nowrap">A</td>
                                        </tr>
                                        <tr>
                                            <th class="px-3 py-2 whitespace-nowrap">Date of Birth</th>
                                            <td class="px-3 py-2 whitespace-nowrap">:</td>
                                            <td class="px-3 py-2 whitespace-nowrap">
                                                {{ date('d-m-Y', strtotime($result->admitCard->dob)) }}</td>
                                        </tr>
                                        <tr>
                                            <th class="px-3 py-2 whitespace-nowrap">Address</th>
                                            <td class="px-3 py-2 whitespace-nowrap">:</td>
                                            <td class="px-3 py-2 whitespace-nowrap" colspan="4">
                                                {{ $result->admitCard->address }}
                                            </td>
                                        </tr>
                                    </table>
                                </div>
                                <!-- student picture -->
                                <div>
                                    <div class="border-2 border-black w-[150px] h-[180px]">
                                        <!-- <div class="border border-black aspect-[20/23]"> -->
                                        {{-- <img src="./person.jpg" class="w-full h-full aspect-[4/3]" alt="student image" /> --}}
                                        <img src="{{ $result->admitCard->image ? asset('uploads/images/students/' . $result->admitCard->image) : asset('images/static/paste-image.webp') }}"
                                            class="w-full h-full aspect-[4/3]" alt="student image" />
                                    </div>
                                </div>
                                <!-- /student picture -->
                            </div>
                        </div>
                    </div>
                    <!-- marks -->
                    <div class="w-full border-y-2 py-2 border-black px-4">
                        <div class="flex gap-5">
                            <table class="w-full table text-center">
                                <thead>
                                    <tr class="border-b-2 border-black">
                                        <th class="px-3 py-2 whitespace-nowrap text-left">Subjects</th>
                                        <th class="px-3 py-2 whitespace-nowrap">Full Marks</th>
                                        <th class="px-3 py-2 whitespace-nowrap">Written</th>
                                        <th class="px-3 py-2 whitespace-nowrap">Oral</th>
                                        <th class="px-3 py-2 whitespace-nowrap">Total</th>
                                        <th class="px-3 py-2 whitespace-nowrap">Grade</th>
                                    </tr>
                                </thead>
                                <tbody>

                                    <tr class="border-b-[1px] border-gray-300">
                                        <th class="px-3 py-2 whitespace-nowrap text-left">Hindi</th>
                                        <td class="px-3 py-2 whitespace-nowrap">100</td>
                                        <td class="px-3 py-2 whitespace-nowrap">{{ $result->marks->hindi }}</td>
                                        <td class="px-3 py-2 whitespace-nowrap">--</td>
                                        <td class="px-3 py-2 whitespace-nowrap">{{ $result->marks->hindi }}</td>
                                        <td class="px-3 py-2 whitespace-nowrap">{{ res($result->marks->hindi)['g'] }}
                                        </td>
                                    </tr>

                                    <tr class="border-b-[1px] border-gray-300">
                                        <th class="px-3 py-2 whitespace-nowrap text-left">English</th>
                                        <td class="px-3 py-2 whitespace-nowrap">100</td>
                                        <td class="px-3 py-2 whitespace-nowrap">{{ $result->marks->english }}</td>
                                        <td class="px-3 py-2 whitespace-nowrap">--</td>
                                        <td class="px-3 py-2 whitespace-nowrap">{{ $result->marks->english }}</td>
                                        <td class="px-3 py-2 whitespace-nowrap">{{ res($result->marks->english)['g'] }}
                                        </td>
                                    </tr>

                                    <tr class="border-b-[1px] border-gray-300">
                                        <th class="px-3 py-2 whitespace-nowrap text-left">Maths</th>
                                        <td class="px-3 py-2 whitespace-nowrap">100</td>
                                        <td class="px-3 py-2 whitespace-nowrap">{{ $result->marks->maths }}</td>
                                        <td class="px-3 py-2 whitespace-nowrap">--</td>
                                        <td class="px-3 py-2 whitespace-nowrap">{{ $result->marks->maths }}</td>
                                        <td class="px-3 py-2 whitespace-nowrap">{{ res($result->marks->maths)['g'] }}
                                        </td>
                                    </tr>

                                    <tr class="border-b-[1px] border-gray-300">
                                        <th class="px-3 py-2 whitespace-nowrap text-left">Science</th>
                                        <td class="px-3 py-2 whitespace-nowrap">100</td>
                                        <td class="px-3 py-2 whitespace-nowrap">
                                            {{ isset($result->marks->science) ? $result->marks->science : '--' }}</td>
                                        <td class="px-3 py-2 whitespace-nowrap">
                                            {{ isset($result->marks->scince_oral) ? $result->marks->scince_oral : '--' }}
                                        </td>
                                        </td>
                                        <td class="px-3 py-2 whitespace-nowrap">
                                            {{ isset($result->marks->scince_oral) ? $result->marks->science + $result->marks->science_oral : $result->marks->science }}
                                        </td>
                                        </td>
                                        <td class="px-3 py-2 whitespace-nowrap">
                                            {{ res(isset($result->marks->scince_oral) ? $result->marks->science + $result->marks->science_oral : $result->marks->science)['g'] }}
                                        </td>
                                    </tr>

                                    <tr class="border-b-[1px] border-gray-300">
                                        <th class="px-3 py-2 whitespace-nowrap text-left">Social Science</th>
                                        <td class="px-3 py-2 whitespace-nowrap">100</td>
                                        <td class="px-3 py-2 whitespace-nowrap">
                                            {{ isset($result->marks->sst) ? $result->marks->sst : '--' }}</td>
                                        <td class="px-3 py-2 whitespace-nowrap">
                                            {{ isset($result->marks->scince_oral) ? $result->marks->scince_oral : '--' }}
                                        </td>
                                        </td>
                                        <td class="px-3 py-2 whitespace-nowrap">
                                            {{ isset($result->marks->scince_oral) ? $result->marks->sst + $result->marks->sst_oral : $result->marks->sst }}
                                        </td>
                                        </td>
                                        <td class="px-3 py-2 whitespace-nowrap">
                                            {{ res(isset($result->marks->scince_oral) ? $result->marks->sst + $result->marks->sst_oral : $result->marks->sst)['g'] }}
                                        </td>
                                    </tr>

                                    <tr class="border-b-[1px] border-gray-300">
                                        <th class="px-3 py-2 whitespace-nowrap text-left">Computer</th>
                                        <td class="px-3 py-2 whitespace-nowrap">100</td>
                                        <td class="px-3 py-2 whitespace-nowrap">{{ $result->marks->computer }}</td>
                                        <td class="px-3 py-2 whitespace-nowrap">--</td>
                                        <td class="px-3 py-2 whitespace-nowrap">{{ $result->marks->computer }}</td>
                                        <td class="px-3 py-2 whitespace-nowrap">
                                            {{ res($result->marks->computer)['g'] }}
                                        </td>
                                    </tr>

                                    <tr class="border-b-[1px] border-gray-300">
                                        <th class="px-3 py-2 whitespace-nowrap text-left">General Knowledge</th>
                                        <td class="px-3 py-2 whitespace-nowrap">100</td>
                                        <td class="px-3 py-2 whitespace-nowrap">{{ $result->marks->gk }}</td>
                                        <td class="px-3 py-2 whitespace-nowrap">--</td>
                                        <td class="px-3 py-2 whitespace-nowrap">{{ $result->marks->gk }}</td>
                                        <td class="px-3 py-2 whitespace-nowrap">{{ res($result->marks->gk)['g'] }}
                                        </td>
                                    </tr>


                                </tbody>

                            </table>
                            <div class="w-[200px]">
                                <div class="w-full aspect-square border border-black">
                                    {{-- <img src="./sample-qr-code.png" alt="" /> --}}
                                    {!! QrCode::size(150, 150)->margin(2)->generate($qrData) !!}
                                </div>
                                <div>
                                    <table class="border border-black mt-2 text-xs  w-full text-left">
                                        <tr>
                                            <th class="border border-black px-1 text-center" colspan="2">Grading
                                                System</th>
                                            {{-- <th class="border border-black px-1">Range</th> --}}
                                        </tr>
                                        <tr>
                                            <th class="border border-black px-1">A+</th>
                                            <td class="border border-black px-1">91%-100%</td>
                                        </tr>
                                        <tr>
                                            <th class="border border-black px-1">A</th>
                                            <td class="border border-black px-1">81%-90%</td>
                                        </tr>
                                        <tr>
                                            <th class="border border-black px-1">B+</th>
                                            <td class="border border-black px-1">71%-80%</td>
                                        </tr>
                                        <tr>
                                            <th class="border border-black px-1">B</th>
                                            <td class="border border-black px-1">61%-70%</td>
                                        </tr>
                                        <tr>
                                            <th class="border border-black px-1">C+</th>
                                            <td class="border border-black px-1">51%-60%</td>
                                        </tr>
                                        <tr>
                                            <th class="border border-black px-1">C</th>
                                            <td class="border border-black px-1">41%-50%</td>
                                        </tr>
                                        <tr>
                                            <th class="border border-black px-1">D</th>
                                            <td class="border border-black px-1">33%-50%</td>
                                        </tr>
                                        <tr>
                                            <th class="border border-black px-1">E</th>
                                            <td class="border border-black px-1">Less than 33%</td>
                                        </tr>
                                    </table>
                                </div>
                                {{-- hidden --}}
                                <div class="flex flex-col gap-2 mt-2 hidden">
                                    <div class="flex flex-col text-center border border-black divide-y divide-black">
                                        <span class="font-bold">Attendance</span>
                                        <span>000</span>
                                    </div>

                                    <div class="flex flex-col text-center border border-black divide-y divide-black">
                                        <span class="font-bold">Position in Class</span>
                                        <span>000</span>
                                    </div>

                                    <div class="flex flex-col text-center border border-black divide-y divide-black">
                                        <span class="font-bold">Grade</span>
                                        <span>A+</span>
                                    </div>
                                </div>
                                {{-- /hidden --}}
                            </div>
                        </div>

                        {{-- hidden --}}
                        <div class="hidden">
                            <div class="text-xs p-2 border border-black rounded-lg mt-2">
                                <strong>Grading Scale :</strong> A+(91%-100%), A(81%-90%),
                                B+(71%-80%), B(61%-70%), C+(51%-60%), C(41%-50%), D(33%-40%),
                                E(32% & Below)
                            </div>
                        </div>
                        {{-- /hidden --}}
                    </div>

                    <div class="px-4 py-2">
                        <table class="border border-black w-full text-center">
                            <tr>
                                <th class="border border-black px-3 py-2">Obtained Marks</th>
                                <th class="border border-black px-3 py-2">Obtained Marks %</th>
                                <th class="border border-black px-3 py-2">Attendance</th>
                                <th class="border border-black px-3 py-2">Grade</th>
                                <th class="border border-black px-3 py-2">Position in Class</th>
                            </tr>

                            <tr>
                                <td class="border border-black px-3 py-2">
                                    {{ $result->total }}/{{ $result->full_marks }}</td>
                                <td class="border border-black px-3 py-2">
                                    {{ round(($result->total * 100) / $result->full_marks, 2) }}%
                                </td>
                                <td class="border border-black px-3 py-2">--</td>
                                <td class="border border-black px-3 py-2">
                                    {{ res(($result->total * 100) / $result->full_marks)['g'] }}
                                </td>
                                <td class="border border-black px-3 py-2">
                                    @isset($result->postion)
                                        {{ $result->position }}
                                    @endisset
                                    @empty($result->postion)
                                        --
                                    @endempty
                                </td>
                            </tr>
                        </table>
                    </div>

                    <div>
                        <div class="px-4 ">
                            <span class="font-semibold"> Remarks : </span>
                            <span> {{ res(($result->total * 100) / $result->full_marks)['r'] }} </span>
                        </div>
                    </div>
                </div>

                <!-- fill empty space -->
                <div class="w-full flex-grow"></div>

                <!-- signature section -->
                <div class="flex">
                    <div class="w-full flex justify-around p-2 items-end">
                        <div class="font-semibold px-5">
                            <div class="flex flex-col text-center">
                                <div>{{ date('d-m-Y') }}</div>
                                <div class="border-t-2 border-dashed border-black">Date</div>
                            </div>
                        </div>
                        <div class="font-semibold px-5">
                            <div class="flex flex-col text-center">
                                <div>
                                    @if ($result->admitCard->class === 'LKG')
                                        <img src="{{ asset('images/static/sanjana-sign.webp') }}">
                                    @endif
                                    @if ($result->admitCard->class === 'UKG')
                                        <img src="{{ asset('images/static/pooja-sign.webp') }}">
                                    @endif
                                    @if ($result->admitCard->class === 'Play')
                                        <img src="{{ asset('images/static/mukesh-sign.webp') }}">
                                    @endif
                                    @if (!in_array($result->admitCard->class, ['Play', 'LKG', 'UKG']))
                                        <img src="{{ asset('images/static/mukul-sign.webp') }}">
                                    @endif
                                </div>
                                <div class="border-t-2 border-dashed border-black">Class Teacher</div>
                            </div>
                        </div>
                        <div class="font-semibold px-5">
                            <div class="flex flex-col text-center">
                                <div class="w-48">
                                    <img src="{{ asset('images/static/principal_seal400.webp') }}">
                                </div>
                                <div class="border-t-2 border-dashed border-black"> Director/Principal</div>
                            </div>
                        </div>

                    </div>
                    <div class="bg-red-100 aspect-square w-[200px]" hidden></div>
                </div>
                <!-- footer -->
                <div>
                    <div class="bg-green-700 text-white px-1 py-[1px] flex justify-between border-t-2 border-black">
                        <!-- call -->
                        <div class="flex">
                            <svg class="size-6 text-white m-auto mr-1" aria-hidden="true"
                                xmlns="http://www.w3.org/2000/svg" width="24" height="24" fill="none"
                                viewBox="0 0 24 24">
                                <path stroke="currentColor" stroke-linecap="round" stroke-linejoin="round"
                                    stroke-width="2"
                                    d="M18.427 14.768 17.2 13.542a1.733 1.733 0 0 0-2.45 0l-.613.613a1.732 1.732 0 0 1-2.45 0l-1.838-1.84a1.735 1.735 0 0 1 0-2.452l.612-.613a1.735 1.735 0 0 0 0-2.452L9.237 5.572a1.6 1.6 0 0 0-2.45 0c-3.223 3.2-1.702 6.896 1.519 10.117 3.22 3.221 6.914 4.745 10.12 1.535a1.601 1.601 0 0 0 0-2.456Z" />
                            </svg>

                            <a class="my-auto" href="tel:+919128289100"> 9128289100</a>
                        </div>
                        <!-- /call -->
                        <!-- whatsapp -->
                        <div class="flex">
                            <svg class="size-5 text-white my-auto mr-1" aria-hidden="true"
                                xmlns="http://www.w3.org/2000/svg" width="24" height="24" fill="none"
                                viewBox="0 0 24 24">
                                <path fill="currentColor" fill-rule="evenodd"
                                    d="M12 4a8 8 0 0 0-6.895 12.06l.569.718-.697 2.359 2.32-.648.379.243A8 8 0 1 0 12 4ZM2 12C2 6.477 6.477 2 12 2s10 4.477 10 10-4.477 10-10 10a9.96 9.96 0 0 1-5.016-1.347l-4.948 1.382 1.426-4.829-.006-.007-.033-.055A9.958 9.958 0 0 1 2 12Z"
                                    clip-rule="evenodd" />
                                <path fill="currentColor"
                                    d="M16.735 13.492c-.038-.018-1.497-.736-1.756-.83a1.008 1.008 0 0 0-.34-.075c-.196 0-.362.098-.49.291-.146.217-.587.732-.723.886-.018.02-.042.045-.057.045-.013 0-.239-.093-.307-.123-1.564-.68-2.751-2.313-2.914-2.589-.023-.04-.024-.057-.024-.057.005-.021.058-.074.085-.101.08-.079.166-.182.249-.283l.117-.14c.121-.14.175-.25.237-.375l.033-.066a.68.68 0 0 0-.02-.64c-.034-.069-.65-1.555-.715-1.711-.158-.377-.366-.552-.655-.552-.027 0 0 0-.112.005-.137.005-.883.104-1.213.311-.35.22-.94.924-.94 2.16 0 1.112.705 2.162 1.008 2.561l.041.06c1.161 1.695 2.608 2.951 4.074 3.537 1.412.564 2.081.63 2.461.63.16 0 .288-.013.4-.024l.072-.007c.488-.043 1.56-.599 1.804-1.276.192-.534.243-1.117.115-1.329-.088-.144-.239-.216-.43-.308Z" />
                            </svg>
                            <a href="https://wa.me/919973757920?text=Hi%20I%20need%20help" class="my-auto">
                                9973757920</a>
                        </div>
                        <!-- /whatsapp -->
                        <!-- email -->
                        <div class="flex">
                            <span class="flex">
                                <svg xmlns="http://www.w3.org/2000/svg" fill="none" viewBox="0 0 24 24"
                                    stroke-width="1.5" stroke="currentColor" class="size-5 my-auto mr-1">
                                    <path stroke-linecap="round" stroke-linejoin="round"
                                        d="M21.75 6.75v10.5a2.25 2.25 0 0 1-2.25 2.25h-15a2.25 2.25 0 0 1-2.25-2.25V6.75m19.5 0A2.25 2.25 0 0 0 19.5 4.5h-15a2.25 2.25 0 0 0-2.25 2.25m19.5 0v.243a2.25 2.25 0 0 1-1.07 1.916l-7.5 4.615a2.25 2.25 0 0 1-2.36 0L3.32 8.91a2.25 2.25 0 0 1-1.07-1.916V6.75" />
                                </svg>
                                <a href="mailto:anshumemorial@gmail.com">anshumemorial@gmail.com</a>
                            </span>
                        </div>
                        <!-- /email -->
                        <!-- web -->
                        <div class="flex">
                            <svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 496 512"
                                class="size-5 fill-white my-auto mr-1">
                                <path
                                    d="M336.5 160C322 70.7 287.8 8 248 8s-74 62.7-88.5 152h177zM152 256c0 22.2 1.2 43.5 3.3 64h185.3c2.1-20.5 3.3-41.8 3.3-64s-1.2-43.5-3.3-64H155.3c-2.1 20.5-3.3 41.8-3.3 64zm324.7-96c-28.6-67.9-86.5-120.4-158-141.6 24.4 33.8 41.2 84.7 50 141.6h108zM177.2 18.4C105.8 39.6 47.8 92.1 19.3 160h108c8.7-56.9 25.5-107.8 49.9-141.6zM487.4 192H372.7c2.1 21 3.3 42.5 3.3 64s-1.2 43-3.3 64h114.6c5.5-20.5 8.6-41.8 8.6-64s-3.1-43.5-8.5-64zM120 256c0-21.5 1.2-43 3.3-64H8.6C3.2 212.5 0 233.8 0 256s3.2 43.5 8.6 64h114.6c-2-21-3.2-42.5-3.2-64zm39.5 96c14.5 89.3 48.7 152 88.5 152s74-62.7 88.5-152h-177zm159.3 141.6c71.4-21.2 129.4-73.7 158-141.6h-108c-8.8 56.9-25.6 107.8-50 141.6zM19.3 352c28.6 67.9 86.5 120.4 158 141.6-24.4-33.8-41.2-84.7-50-141.6h-108z" />
                            </svg>
                            <a href="http://anshumemorial.in">www.anshumemorial.in</a>
                        </div>
                        <!-- /web -->
                    </div>
                </div>
                <!-- /footer -->
            </div>
            <!-- /main content -->

            <!-- developer details -->
            <div class="w-full text-center text-xs py-1 bg-gray-100">
                Designed &amp; Developed by
                <a class="text-blue-600 font-semibold" href="https://skwebs.github.io">Anshu Memorial Academy (IT
                    Team)</a>
            </div>
            <!-- /developer details -->

            <!--  -->
        </section>
    @endforeach
</body>

</html>
