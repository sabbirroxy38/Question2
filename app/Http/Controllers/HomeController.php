<?php

namespace App\Http\Controllers;

use App\Board;
use App\HighSecondaryExam;
use App\PassingYear;
use App\Program;
use App\SecondaryExam;
use App\StudentInfo;
use Illuminate\Http\Request;
use Intervention\Image\ImageManagerStatic as Image;
use Illuminate\Support\Facades\File;
use Illuminate\Support\Facades\Redirect;

class HomeController extends Controller
{

    public function __construct()
    {
        $this->middleware('auth');
    }

    public function index()
    {
        $boards = Board::all();
        $programs = Program::all();
        $secondaryExams = SecondaryExam::all();
        $highSecondaryExams = HighSecondaryExam::all();
        $passingYears = PassingYear::all();

        return view('home', compact('boards', 'programs', 'secondaryExams', 'highSecondaryExams', 'passingYears'));
    }

    public function store(Request $request)
    {
        $request->validate([
            'students_full_name' => 'required',
            'program_id' => 'required',
            'student_photo' => 'nullable|image|mimes:jpeg,png,jpg|max:256',
            'father_name' => 'required',
            'mother_name' => 'required',
            'student_contact_no' => 'required',
            'parent_contact_no' => 'required',
            'present_address' => 'required',
            'examination_id' => 'required',
            'roll_number' => 'required',
            'registration_number' => 'required',
            'passing_year_id' => 'required',
            'board_id' => 'required',
            'gpa_grade' => 'required',
            'h_examination_id' => 'required',
            'h_roll_number' => 'required',
            'h_registration_number' => 'required',
            'h_passing_year_id' => 'required',
            'h_board_id' => 'required',
            'cgpa_grade' => 'required',
        ]);

        $studentInfo = new StudentInfo();
        $studentInfo->students_full_name = $request->students_full_name;
        $studentInfo->program_id = $request->program_id;
        
        if($request->hasFile('student_photo')){

            $image = $request->file('student_photo');
            $img = time() . '.' . $image->getClientOriginalExtension();
            $location = public_path('images/' .$img);
            Image::make($image)->save($location);
            $studentInfo->student_photo = $img;
        }

        $studentInfo->father_name = $request->father_name;
        $studentInfo->mother_name = $request->mother_name;
        $studentInfo->referrer_name = $request->referrer_name;
        $studentInfo->student_contact_no = $request->student_contact_no;
        $studentInfo->parent_contact_no = $request->parent_contact_no;
        $studentInfo->student_nid_no = $request->student_nid_no;
        $studentInfo->student_email = $request->student_email;
        $studentInfo->present_address = $request->present_address;
        $studentInfo->examination_id = $request->examination_id;
        $studentInfo->roll_number = $request->roll_number;
        $studentInfo->registration_number = $request->registration_number;
        $studentInfo->passing_year_id = $request->passing_year_id;
        $studentInfo->board_id = $request->board_id;
        $studentInfo->gpa_grade = $request->gpa_grade;
        $studentInfo->h_examination_id = $request->h_examination_id;
        $studentInfo->h_roll_number = $request->h_roll_number;
        $studentInfo->h_registration_number = $request->h_registration_number;
        $studentInfo->h_passing_year_id = $request->h_passing_year_id;
        $studentInfo->h_board_id = $request->h_board_id;
        $studentInfo->cgpa_grade = $request->cgpa_grade;

        $studentInfo->save();
        session()->flash('success', 'Student Info has added successfully !!');
        return Redirect()->route('home');
    }
}
