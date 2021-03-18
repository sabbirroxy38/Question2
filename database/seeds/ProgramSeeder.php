<?php

use App\Program;
use Illuminate\Database\Seeder;

class ProgramSeeder extends Seeder
{

    public function run()
    {
        $programs = [
            ['id' => 1, 'program_name' => 'Bachelor of Architecture(B.Arch)'],
            ['id' => 2, 'program_name' => 'BSc in Electrical & Electronic Engineering (EEE)'],
            ['id' => 3, 'program_name' => 'Bachelor of Pharmacy (B.Pharm) (Hons.)'],
            ['id' => 4, 'program_name' => 'Master of Pharmacy (M.Pharm)'],
        ];

        foreach($programs as $program){
            Program::create($program);
        }
    }
}
