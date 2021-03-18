@extends('layouts.app')

@section('content')
<div class="container">
    <form action="{{route('user.store')}}" method="POST" enctype="multipart/form-data">
        @csrf
        @include('message.messages')

        {{-- Basic info section --}}
        <div class="row mb-2">
            <h4 class="col-sm-6">Student Basic Information</h4>
        </div>

        <div class="row">
            <div class="col-sm-4">
                <div class="form-group">
                    <label><b>Student's Full Name</b> <span class="text-danger">*</span></label>
                    <input type="text" class="form-control" name="students_full_name" required>
                </div>
            </div>

            <div class="col-sm-4">
                <div class="form-group">
                    <label><b>Program</b> <span class="text-danger">*</span></label>
                    <select class="form-control" id="program-id" name="program_id" required>
                        <option selected value="">Select Program</option>
                        @foreach ($programs as $program)
                            <option value="{{$program->id}}">{{$program->program_name}}</option>
                        @endforeach
                    </select>
                </div>
            </div>

            <div class="col-sm-4">
                <div class="form-group">
                    <label><b>Student Photo</b></label>
                    <input type="file" class="form-control-file" name="student_photo">
                    <small class="form-text text-muted">
                        Photo Must be in passport (PP) Size. Max Upload Size <b>256KB</b>. 
                        Upload Only <b>JPG/PNG/JPEG</b> Extensions File.
                    </small>
                </div>
            </div>
        </div>

        {{-- Personal info section --}}
        <div class="row mb-2">
            <h4 class="col-sm-6">Student Personal Information</h4>
        </div>

        <div class="row">
            <div class="col-sm-4">
                <div class="form-group">
                    <label><b>Father's Name</b> <span class="text-danger">*</span></label>
                    <input type="text" class="form-control" name="father_name" required>
                </div>
            </div>

            <div class="col-sm-4">
                <div class="form-group">
                    <label><b>Mother's Name</b> <span class="text-danger">*</span></label>
                    <input type="text" class="form-control" name="mother_name" required>
                </div>
            </div>

            <div class="col-sm-4">
                <div class="form-group">
                    <label><b>Guardian / Referrer Name</b></label>
                    <input type="text" class="form-control" name="referrer_name">
                </div>
            </div>
        </div>

        <div class="row">
            <div class="col-sm-4">
                <div class="form-group">
                    <label><b>Student's Contact No.</b> <span class="text-danger">*</span></label>
                    <input type="text" class="form-control" name="student_contact_no" required>
                </div>
            </div>

            <div class="col-sm-4">
                <div class="form-group">
                    <label><b>Parent's / Guardian's Contact No.</b> <span class="text-danger">*</span></label>
                    <input type="text" class="form-control" name="parent_contact_no" required>
                </div>
            </div>

            <div class="col-sm-4">
                <div class="form-group">
                    <label><b>Student's National ID / Birth Certificate No.</b></label>
                    <input type="text" class="form-control" name="student_nid_no">
                </div>
            </div>
        </div>

        <div class="row">
            <div class="col-sm-4">
                <div class="form-group">
                    <label><b>Student's E-mail</b></label>
                    <input type="text" class="form-control" name="student_email">
                </div>
            </div>
        </div>

        <div class="row">
            <div class="col-sm-8">
                <div class="form-group">
                    <label><b>Present Address <span class="text-danger">*</span></b></label>
                    <textarea class="form-control" name="present_address" rows="4" required></textarea>
                </div>
            </div>
        </div>

        {{-- Academic info section --}}
        <div class="row mb-2 mt-2">
            <h4 class="col-sm-6">Student Academic Information</h4>
        </div>

        <div class="row">
            <div class="col-sm-5">
                <div class="form-group">
                    <label><b>SSC / Dakhil / Equivalent</b> <span class="text-danger">*</span></label>
                    <select class="form-control" id="examination-id" name="examination_id" required>
                        <option selected value="">Select Examination</option>
                        @foreach ($secondaryExams as $secondaryExam)
                            <option value="{{$secondaryExam->id}}">{{$secondaryExam->s_examination_name}}</option>
                        @endforeach
                    </select>
                </div>
            </div>
        </div>

        <div class="row">
            <div class="col-sm-3">
                <div class="form-group">
                    <label><b>Roll Number</b> <span class="text-danger">*</span></label>
                    <input type="text" class="form-control" name="roll_number" required>
                </div>
            </div>

            <div class="col-sm-3">
                <div class="form-group">
                    <label><b>Registration Number</b> <span class="text-danger">*</span></label>
                    <input type="text" class="form-control" name="registration_number" required>
                </div>
            </div>

            <div class="col-sm-2">
                <div class="form-group">
                    <label><b>Passing Year</b> <span class="text-danger">*</span></label>
                    <select class="form-control" id="passing-year-id" name="passing_year_id" required>
                        <option selected value="">Select Year</option>
                        @foreach ($passingYears as $passingYear)
                            <option value="{{$passingYear->id}}">{{$passingYear->passing_year}}</option>
                        @endforeach
                    </select>
                </div>
            </div>

            <div class="col-sm-2">
                <div class="form-group">
                    <label><b>Board</b> <span class="text-danger">*</span></label>
                    <select class="form-control" id="board-id" name="board_id" required>
                        <option selected value="">Select Board</option>
                        @foreach ($boards as $board)
                            <option value="{{$board->id}}">{{$board->board_name}}</option>
                        @endforeach
                    </select>
                </div>
            </div>

            <div class="col-sm-2">
                <div class="form-group">
                    <label><b>GPA</b> <span class="text-danger">*</span></label>
                    <input type="text" class="form-control" name="gpa_grade" required>
                </div>
            </div>
        </div>

        <div class="row">
            <div class="col-sm-5">
                <div class="form-group">
                    <label><b>HSC / Diploma / Equivalent</b> <span class="text-danger">*</span></label>
                    <select class="form-control" id="h-examination-id" name="h_examination_id" required>
                        <option selected value="">Select Examination</option>
                        @foreach ($highSecondaryExams as $highSecondaryExam)
                            <option value="{{$highSecondaryExam->id}}">{{$highSecondaryExam->h_examination_name}}</option>
                        @endforeach
                    </select>
                </div>
            </div>
        </div>

        <div class="row">
            <div class="col-sm-3">
                <div class="form-group">
                    <label><b>Roll Number</b> <span class="text-danger">*</span></label>
                    <input type="text" class="form-control" name="h_roll_number" required>
                </div>
            </div>

            <div class="col-sm-3">
                <div class="form-group">
                    <label><b>Registration Number</b> <span class="text-danger">*</span></label>
                    <input type="text" class="form-control" name="h_registration_number" required>
                </div>
            </div>

            <div class="col-sm-2">
                <div class="form-group">
                    <label><b>Passing Year</b> <span class="text-danger">*</span></label>
                    <select class="form-control" id="passing-year-id" name="h_passing_year_id" required>
                        <option selected value="">Select Year</option>
                        @foreach ($passingYears as $passingYear)
                            <option value="{{$passingYear->id}}">{{$passingYear->passing_year}}</option>
                        @endforeach
                    </select>
                </div>
            </div>

            <div class="col-sm-2">
                <div class="form-group">
                    <label><b>Board</b> <span class="text-danger">*</span></label>
                    <select class="form-control" id="h-board-id" name="h_board_id" required>
                        <option selected value="">Select Board</option>
                        @foreach ($boards as $board)
                            <option value="{{$board->id}}">{{$board->board_name}}</option>
                        @endforeach
                    </select>
                </div>
            </div>

            <div class="col-sm-2">
                <div class="form-group">
                    <label><b>GPA</b> <span class="text-danger">*</span></label>
                    <input type="text" class="form-control" name="cgpa_grade" required>
                </div>
            </div>
        </div>

        <div class="row">
           <div class="col-sm-6">
            <button class="btn btn-light" style="background-color: lightgray; border-radius: 0px;" type="submit">Submit</button>
           </div>
        </div>
    </form>
</div>
@endsection
