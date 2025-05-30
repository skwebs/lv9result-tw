@extends('layouts.student_layout')

@section('meta')
    <title> Edit Student Details </title>
@endsection

@section('css')
    <style type="text/css">
        .form-control:required~label:after,
        .form-select:required~label:after {
            content: "*";
            position: relative;
            color: var(--bs-danger);
            transform: scale(1.2)translateX(.2rem);
            display: inline-block;
            font-style: normal;
        }

        .bi-asterisk {
            transform: translate(0, -5px);
        }

        .mandate {
            transform: scale(1.5) translate(2px, 0);
            display: inline-block;
        }
    </style>
@endsection
<?php
$mandat = '<svg xmlns="http://www.w3.org/2000/svg" width="10" height="10" fill="red" class="bi bi-asterisk" viewBox="0 0 16 16">
	<path d="M8 0a1 1 0 0 1 1 1v5.268l4.562-2.634a1 1 0 1 1 1 1.732L10 8l4.562 2.634a1 1 0 1 1-1 1.732L9 9.732V15a1 1 0 1 1-2 0V9.732l-4.562 2.634a1 1 0 1 1-1-1.732L6 8 1.438 5.366a1 1 0 0 1 1-1.732L7 6.268V1a1 1 0 0 1 1-1z"/>
	</svg>';
$mandate = '<span class="text-danger mandate" >*</span>';
?>

@section('content')
    <div class="container">
        <div class="row justify-content-center mt-4">
            <div class="col-md-8">
                <div class="card">
                    <div class="card-header">
                        <div class="d-flex justify-content-between">
                            <span>{{ __('Update Student\'s Details') }}</span>
                            <a class="btn btn-primary" href="{{ route('admitCard.index') }}">
                                <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor"
                                    class="bi bi-arrow-left" viewBox="0 0 16 16">
                                    <path fill-rule="evenodd"
                                        d="M15 8a.5.5 0 0 0-.5-.5H2.707l3.147-3.146a.5.5 0 1 0-.708-.708l-4 4a.5.5 0 0 0 0 .708l4 4a.5.5 0 0 0 .708-.708L2.707 8.5H14.5A.5.5 0 0 0 15 8z" />
                                </svg>
                                <span class="d-none d-md-inline"> &nbsp; Go Back</span>
                            </a>
                        </div>
                    </div>

                    <div class="card-body">


                        @if ($message = Session::get('success'))
                            <div class="alert alert-success alert-dismissible fade show" role="alert">
                                <strong>{{ $message }}</strong>
                                <button type="button" class="btn-close" data-bs-dismiss="alert"
                                    aria-label="Close"></button>
                            </div>
                        @endif

                        @if ($message = session('warning'))
                            <div class="alert alert-warning alert-dismissible fade show" role="alert">
                                <strong>{{ $message }}</strong>
                                <button type="button" class="btn-close" data-bs-dismiss="alert"
                                    aria-label="Close"></button>
                            </div>
                        @endif

                        @if (count($errors) > 0)
                            <div class="alert alert-danger">
                                <strong>Whoops!</strong> There were some problems with your input.
                                <ul>
                                    @foreach ($errors->all() as $error)
                                        <li>{{ $error }}</li>
                                    @endforeach
                                </ul>
                            </div>
                        @endif

                        <form method="POST" action="{{ route('admitCard.update', $admitCard->id) }}"
                            enctype="multipart/form-data">
                            @csrf
                            @method('PUT')

                            <input type="hidden" name="id" value="{{ $admitCard->id }}">
                            <!-- name -->
                            <div class="row mb-3">
                                <label for="name"
                                    class="col-md-4 col-form-label text-md-end">{{ __('Student\'s Name') }}{!! $mandate !!}</label>

                                <div class="col-md-6">
                                    <input id="name" type="text"
                                        class="form-control @error('name') is-invalid @enderror" name="name"
                                        value="{{ old('name', $admitCard->name) }}" required autocomplete="name" autofocus>

                                    @error('name')
                                        <span class="invalid-feedback" role="alert">
                                            {{ $message }}
                                        </span>
                                    @enderror
                                </div>
                            </div>
                            <!-- //name -->

                            <!-- mother -->
                            <div class="row mb-3">
                                <label for="mother"
                                    class="col-md-4 col-form-label text-md-end">{{ __('Mother\'s Name') }}{!! $mandate !!}</label>

                                <div class="col-md-6">
                                    <input id="mother" type="text"
                                        class="form-control @error('mother') is-invalid @enderror" name="mother"
                                        value="{{ old('mother', $admitCard->mother) }}" autofocus required>

                                    @error('mother')
                                        <span class="invalid-feedback" role="alert">
                                            <strong>{{ $message }}</strong>
                                        </span>
                                    @enderror
                                </div>
                            </div>
                            <!-- //mother -->

                            <!-- father -->
                            <div class="row mb-3">
                                <label for="father"
                                    class="col-md-4 col-form-label text-md-end">{{ __('Father\'s Name') }}{!! $mandate !!}</label>

                                <div class="col-md-6">
                                    <input id="father" type="text"
                                        class="form-control @error('father') is-invalid @enderror" name="father"
                                        value="{{ old('father', $admitCard->father) }}" required autofocus>

                                    @error('father')
                                        <span class="invalid-feedback" role="alert">
                                            <strong>{{ $message }}</strong>
                                        </span>
                                    @enderror
                                </div>
                            </div>
                            <!-- //father -->

                            <!-- gender -->
                            <div class="row mb-3">
                                <label
                                    class="col-md-4 col-form-label text-md-end">{{ __('Gender') }}{!! $mandate !!}</label>

                                <div class="col-md-6 mt-md-2">

                                    <div class="form-check form-check-inline">
                                        <input class="form-check-input @error('gender') is-invalid @enderror" type="radio"
                                            @if (old('gender', $admitCard->gender) == 'Male') checked @endif name="gender" id="male"
                                            value="Male" required autofocus>
                                        <label class="form-check-label" for="male">Male</label>
                                    </div>

                                    <div class="form-check form-check-inline">
                                        <input class="form-check-input @error('gender') is-invalid @enderror" type="radio"
                                            @if (old('gender', $admitCard->gender) == 'Female') checked @endif name="gender" id="female"
                                            value="Female" required autofocus>
                                        <label class="form-check-label" for="female">Female</label>
                                    </div>

                                    @error('gender')
                                        <span class="invalid-feedback" role="alert">
                                            <strong>{{ $message }}</strong>
                                        </span>
                                    @enderror
                                </div>
                            </div>
                            <!-- //gender -->

                            <!-- date of birth -->
                            <div class="row mb-3">
                                <label for="dob"
                                    class="col-md-4 col-form-label text-md-end">{{ __('Date of Birth') }}</label>

                                <div class="col-md-6">
                                    <input id="dob" type="date"
                                        class="form-control @error('dob') is-invalid @enderror" name="dob"
                                        value="{{ old('dob', date('Y-m-d', strtotime($admitCard->dob))) }}"
                                        autocomplete="bday">

                                    @error('dob')
                                        <span class="invalid-feedback" role="alert">
                                            <strong>{{ $message }}</strong>
                                        </span>
                                    @enderror
                                </div>
                            </div>
                            <!-- //date of birth -->

                            <!-- aadhaar -->
                            <div class="row mb-3">
                                <label for="aadhaar"
                                    class="col-md-4 col-form-label text-md-end">{{ __('Aadhaar No.') }}</label>

                                <div class="col-md-6">
                                    <input id="aadhaar" type="number"
                                        class="form-control @error('aadhaar') is-invalid @enderror" name="aadhaar"
                                        value="{{ old('aadhaar', $admitCard->aadhaar) }}" pattern="^[0-9]{12}$"
                                        autocomplete="aadhaar">

                                    @error('aadhaar')
                                        <span class="invalid-feedback" role="alert">
                                            <strong>{{ $message }}</strong>
                                        </span>
                                    @enderror
                                </div>
                            </div>
                            <!-- //aadhaar -->

                            <!-- mobile -->
                            <div class="row mb-3">
                                <label for="mobile"
                                    class="col-md-4 col-form-label text-md-end">{{ __('Contact No.') }}{!! $mandate !!}</label>

                                <div class="col-md-6">
                                    <input id="mobile" type="tel"
                                        class="form-control @error('mobile') is-invalid @enderror"
                                        value="{{ old('mobile', $admitCard->mobile) }}" name="mobile"
                                        pattern="^[6-9][0-9]{9}$" required autocomplete="tel">

                                    @error('mobile')
                                        <span class="invalid-feedback" role="alert">
                                            <strong>{{ $message }}</strong>
                                        </span>
                                    @enderror
                                </div>
                            </div>
                            <!-- //mobile -->

                            <!-- address -->
                            <div class="row mb-3">
                                <label for="address"
                                    class="col-md-4 col-form-label text-md-end">{{ __('Address') }}{!! $mandate !!}</label>

                                <div class="col-md-6">
                                    <input id="address" type="text"
                                        class="form-control @error('address') is-invalid @enderror" name="address"
                                        value="{{ old('address', $admitCard->address) }}" required
                                        autocomplete="address">

                                    @error('address')
                                        <span class="invalid-feedback" role="alert">
                                            <strong>{{ $message }}</strong>
                                        </span>
                                    @enderror
                                </div>
                            </div>
                            <!-- //address -->

                            <hr>

                            <!-- class -->
                            <div class="row mb-3">
                                <label for="class"
                                    class="col-md-4 col-form-label text-md-end">{{ __('Class') }}{!! $mandate !!}</label>

                                <div class="col-md-6">

                                    <select class="form-select @error('class') is-invalid @enderror" name="class"
                                        required aria-label="Select Standard">
                                        <option value="">Select Class</option>
                                        <option @if (old('class', $admitCard->class) == 'Play') selected @endif value="Play">Play
                                        </option>
                                        <option @if (old('class', $admitCard->class) == 'Nursery') selected @endif value="Nursery">Nursery
                                        </option>
                                        <option @if (old('class', $admitCard->class) == 'LKG') selected @endif value="LKG">LKG
                                        </option>
                                        <option @if (old('class', $admitCard->class) == 'UKG') selected @endif value="UKG">UKG
                                        </option>
                                        <option @if (old('class', $admitCard->class) == 'Std.1') selected @endif value="Std.1">Std.1
                                        </option>
                                        <option @if (old('class', $admitCard->class) == 'Std.2') selected @endif value="Std.2">Std.2
                                        </option>
                                        <option @if (old('class', $admitCard->class) == 'Std.3') selected @endif value="Std.3">Std.3
                                        </option>
                                        <option @if (old('class', $admitCard->class) == 'Std.4') selected @endif value="Std.4">Std.4
                                        </option>
                                        <option @if (old('class', $admitCard->class) == 'Std.5') selected @endif value="Std.5">Std.5
                                        </option>
                                    </select>

                                    @error('class')
                                        <span class="invalid-feedback" role="alert">
                                            <strong>{{ $message }}</strong>
                                        </span>
                                    @enderror
                                </div>
                            </div>
                            <!-- //class -->

                            <!-- roll no. -->
                            <div class="row mb-3">
                                <label for="roll"
                                    class="col-md-4 col-form-label text-md-end">{{ __('Roll No.') }}{!! $mandate !!}</label>

                                <div class="col-md-6">
                                    <input id="roll" type="number"
                                        class="form-control @error('roll') is-invalid @enderror"
                                        value="{{ old('roll', $admitCard->roll) }}" name="roll" pattern="^[0-9]{2}$"
                                        required autocomplete="roll">

                                    @error('roll')
                                        <span class="invalid-feedback" role="alert">
                                            <strong>{{ $message }}</strong>
                                        </span>
                                    @enderror
                                </div>
                            </div>
                            <!-- //roll no. -->

                            <!-- student type
                            <div class="row mb-3">
                                <label class="col-md-4 col-form-label text-md-end">{{ __('Student Type') }}{!! $mandate !!}</label>

                                <div class="col-md-6 pt-md-2">

                                    <div class="form-check form-check-inline">
                                        <input class="form-check-input @error('student_type') is-invalid @enderror"
                                            @if (old('student_type', $admitCard->student_type) == 'Existing') checked @endif type="radio" name="student_type" id="existing" value="Existing" required
                                            autofocus>
                                        <label class="form-check-label" for="existing">Existing</label>
                                    </div>

                                    <div class="form-check form-check-inline">
                                        <input class="form-check-input @error('student_type') is-invalid @enderror"
                                            @if (old('student_type', $admitCard->student_type) == 'New') checked @endif type="radio" name="student_type" id="new" value="New" required autofocus>
                                        <label class="form-check-label" for="new">New</label>
                                    </div>

                                    @error('student_type')
        <span class="invalid-feedback" role="alert">
                                            <strong>{{ $message }}</strong>
                                        </span>
    @enderror
                                </div>
                            </div>


                            <!-- //student type -->

                            <!-- image
                            <div class="row mb-3">
                                <label for="image" class="col-md-4 col-form-label text-md-end">{{ __('Image*') }}</label>

                                <div class="col-md-6">
                                    <input id="image" type="file" class="form-control @error('image') is-invalid @enderror"
                                        name="image" aria-label="file example" accept="image/jpeg, image/png" required>

                                    @error('image')
        <span class="invalid-feedback" role="alert">
                                            <strong>{{ $message }}</strong>
                                        </span>
    @enderror
                                </div>
                            </div>
                             //image -->

                            <!-- submit button -->
                            <div class="row mb-0">
                                <div class="col-md-6 offset-md-4">
                                    <button type="submit" class="btn btn-primary">
                                        {{ __('Update') }}
                                    </button>
                                </div>
                            </div>
                            <!-- //submit button -->
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </div>
@endsection
