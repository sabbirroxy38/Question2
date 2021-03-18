<?php

use App\HighSecondaryExam;
use Illuminate\Database\Seeder;

class HighSecondayExamSeeder extends Seeder
{

    public function run()
    {
        $h_exams = [
            ['id' => 1, 'h_examination_name' => 'HSC/Alim'],
            ['id' => 2, 'h_examination_name' => 'HSC(BM)'],
            ['id' => 3, 'h_examination_name' => 'HSC(Vocational)'],
            ['id' => 4, 'h_examination_name' => 'Diploma in Commerce'],
            ['id' => 5, 'h_examination_name' => 'Diploma in Business Studies'],
        ];

        foreach($h_exams as $h_exam){
            HighSecondaryExam::create($h_exam);
        }
    }
}
