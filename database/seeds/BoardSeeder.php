<?php

use App\Board;
use Illuminate\Database\Seeder;

class BoardSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        $boards = [
            ['id' => 1, 'board_name' => 'Dhaka'],
            ['id' => 2, 'board_name' => 'Rajshahi'],
            ['id' => 3, 'board_name' => 'Comilla'],
            ['id' => 4, 'board_name' => 'Jessore'],
            ['id' => 5, 'board_name' => 'Chittagong'],
            ['id' => 6, 'board_name' => 'Barisal'],
            ['id' => 7, 'board_name' => 'Sylhet'],
        ];

        foreach($boards as $board){
            Board::create($board);
        }
    }
}
