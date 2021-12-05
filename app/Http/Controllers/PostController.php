<?php

namespace App\Http\Controllers;

use App\Models\Category;
use App\Models\User;
use Illuminate\Http\Request;
use App\Models\Post;

class PostController extends Controller
{
    public function index(){
        
        $title = "";
        if (request("category")) {
           $category = Category::firstWhere("slug", request("category"));
           $title = " in $category->name";
        }

        if (request("author")) {
           $author = User::firstWhere("username", request("author"));
           $title = " by $author->name";
        }

        return view('blog', [
            "title" => "All Posts$title",
            "active" => "blog",
            "posts" =>  Post::filter(request(["search","category","author"]))->latest()->paginate(7)->withQueryString() //pakai with(['author',"category"])-> jika di mode gk ditulis property $with
        ]);
    }

    public function show(Post $post){
        return view('post',[
            "title" => "Blog Post",
            "active" => "blog",
            "post" => $post //pake method load jika ingin include query relationship table nya ($post->load(["category","author"]))
        ]);
    }
}
