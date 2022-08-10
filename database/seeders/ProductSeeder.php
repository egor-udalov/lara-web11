<?php

namespace Database\Seeders;

use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Str;

class ProductSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        $data = [];
        for($i = 0; $i <= 9; $i++){
            $product = [
                    'name' => Str::random(40),
                    'price' => 1000,
                    'old_price' => 2000,
                    'category_id' => 3,
                    'img' => '0.jpg'
            ];

            $data[] = $product;
        }

        DB::table('products')->insertOrIgnore($data);
        
    }
}
