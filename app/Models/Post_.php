<?php

namespace App\Models;

class Post
{
   private static $blog_posts = [
        [
            "title" => "Judul post pertama",
            "slug" => "judul-post-pertama",
            "author" => "Muhammad Akbar",
            "body" => "Lorem ipsum dolor sit amet, consectetur adipisicing elit. Ducimus nisi ab eos fugit hic, perspiciatis optio consequatur quae, est excepturi corrupti vero recusandae cumque, ipsa dolores esse incidunt non quos veritatis eius iste reprehenderit fuga! Reiciendis incidunt nesciunt ab, itaque vitae expedita quaerat iure doloremque, consequatur necessitatibus aspernatur odit! Unde doloremque dolor placeat nobis quibusdam inventore necessitatibus quam veniam, ipsam facilis iure incidunt id a ratione sint porro culpa ab at officiis sequi architecto, ex, dignissimos provident! Deleniti, officia expedita?"
        ],
        [
            "title" => "Judul post kedua",
            "slug" => "judul-post-kedua",
            "author" => "Muhammad Udin",
            "body" => "Lorem ipsum dolor, sit amet consectetur adipisicing elit. Alias deleniti ut optio. Obcaecati repudiandae nisi amet in tenetur aliquid quasi quidem, optio at sequi itaque culpa illum, eum esse consequuntur neque rerum, eligendi tempore odit incidunt unde! Beatae unde et optio veniam ducimus maxime soluta dolores delectus culpa. Praesentium laboriosam libero nulla ullam tempore quo ut eum quibusdam a sapiente aliquam maiores perspiciatis optio eaque quae voluptatum, magni fuga consequuntur quis quisquam culpa repudiandae excepturi! Illum, quaerat. A rerum possimus exercitationem. Nulla dicta magni est nostrum maiores, alias ipsum assumenda officia culpa eos natus commodi vitae! Cum recusandae earum consequuntur."
        ]
        ];

    public static function all(){
        return collect(self::$blog_posts);
    }

    public static function find($slug){
        $posts = static::all(); //self untuk property, static untuk method
        
        return $posts->firstWhere('slug',$slug);
    }
}
