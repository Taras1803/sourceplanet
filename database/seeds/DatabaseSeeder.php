<?php
//include_once ('TasksTableSeeder.php');
use Illuminate\Database\Seeder;

class DatabaseSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        $this->call(TasksTableSeeder::class);
    }
}
