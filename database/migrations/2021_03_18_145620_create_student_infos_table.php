<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateStudentInfosTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('student_infos', function (Blueprint $table) {
            $table->id();
            $table->string('students_full_name');
            $table->string('program_id');
            $table->string('student_photo')->nullable();
            $table->string('father_name');
            $table->string('mother_name');
            $table->string('referrer_name')->nullable();
            $table->string('student_contact_no');
            $table->string('parent_contact_no');
            $table->string('student_nid_no')->nullable();
            $table->string('student_email')->nullable();
            $table->string('present_address');
            $table->string('examination_id');
            $table->string('roll_number');
            $table->string('registration_number');
            $table->string('passing_year_id');
            $table->string('board_id');
            $table->string('gpa_grade');
            $table->string('h_examination_id');
            $table->string('h_roll_number');
            $table->string('h_registration_number');
            $table->string('h_passing_year_id');
            $table->string('h_board_id');
            $table->string('cgpa_grade');
            $table->timestamps();
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('student_infos');
    }
}
