<?php

use Illuminate\Database\Seeder;

class DatabaseSeeder extends Seeder
{
    public function run()
    {
        $this->call(UserSeeder::class);
        $this->call(ProgramSeeder::class);
        $this->call(BoardSeeder::class);
        $this->call(HighSecondayExamSeeder::class);
        $this->call(PassingYearSeeder::class);
        $this->call(SecondaryExamSeeder::class);
    }
}
