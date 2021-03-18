<?php

use App\SecondaryExam;
use Illuminate\Database\Seeder;

class SecondaryExamSeeder extends Seeder
{
  
    public function run()
    {
        $s_exams = [
            ['id' => 1, 's_examination_name' => 'JSC/JDC'],
            ['id' => 2, 's_examination_name' => 'SSC/Dakhil'],
            ['id' => 3, 's_examination_name' => 'SSC(Vocational)'],
        ];

        foreach($s_exams as $s_exam){
            SecondaryExam::create($s_exam);
        }
    }
}
