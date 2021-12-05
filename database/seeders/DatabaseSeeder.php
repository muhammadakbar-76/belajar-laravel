<?php

namespace Database\Seeders;

use Illuminate\Database\Seeder;
use App\Models\Post;
use App\Models\Category;
use App\Models\User;

class DatabaseSeeder extends Seeder
{
    /**
     * Seed the application's database.
     *
     * @return void
     */
    public function run()
    {
        User::create([
            "name" => "Muhammad Akbar",
            "username" => "muhammadakbar",
            "email" => "muhammadakbar509@gmail.com",
            "password" => bcrypt("12345")
        ]);
        
        User::factory(5)->create();

        Category::create([
            "name" => "Web Programming",
            "slug" => "web-programming"
        ]);
        Category::create([
            "name" => "Web Design",
            "slug" => "web-design"
        ]);
        Category::create([
            "name" => "Personal",
            "slug" => "personal"
        ]);

       Post::factory(20)->create();
    }
}

  