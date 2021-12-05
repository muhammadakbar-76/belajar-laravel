@extends('layouts/main')

@section('container')
<div class="container">
    <div class="row justify-content-center mb-5">
        <div class="col-md-8">
            <h2>{{ $post->title }}</h2>
            <p class="my-3">By <a href="/blog?author={{ $post->author->username }}" style="text-decoration: none">{{ $post->author->name }}</a> in <a href="/blog?category={{ $post->category->slug }}" style="text-decoration: none">{{ $post->category->name }}</a></p>
            @if ($post->image)
            <div style="max-height: 350px; overflow: hidden">
                <img class="img-fluid mb-3" src="{{ asset('storage')."/$post->image" }}" alt="Card image cap">
            </div>
            @else
            <img class="img-fluid mb-3" src="https://source.unsplash.com/1200x400?{{ $post->category->name }}" alt="Card image cap">
            @endif
            <article class="my-3 fs-5">
                {!!  $post->body !!}
            </article>
            <a href="/blog" class="btn btn-primary">Back</a>
        </div>
    </div>
</div>
    
@endsection