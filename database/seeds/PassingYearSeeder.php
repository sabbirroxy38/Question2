<?php

use App\PassingYear;
use Illuminate\Database\Seeder;

class PassingYearSeeder extends Seeder
{

    public function run()
    {
        $passingYears = [
            ['id' => 1, 'passing_year' => '2014'],
            ['id' => 2, 'passing_year' => '2015'],
            ['id' => 3, 'passing_year' => '2016'],
            ['id' => 4, 'passing_year' => '2017'],
            ['id' => 5, 'passing_year' => '2018'],
            ['id' => 6, 'passing_year' => '2019'],
            ['id' => 7, 'passing_year' => '2020'],
            ['id' => 8, 'passing_year' => '2021'],
        ];

        foreach($passingYears as $passingYear){
            PassingYear::create($passingYear);
        }
    }
}
