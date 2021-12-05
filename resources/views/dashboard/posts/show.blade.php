@extends('dashboard/layouts/main')

@section('container')
<div class="container">
    <div class="row my-3">
        <div class="col-lg-8">
            <h2>{{ $post->title }}</h2>
           <a href="/dashboard/posts" class="btn btn-success my-3 mr-1 btn-sm"><span data-feather="arrow-left"></span> Back to My Posts</a>
           <a href="/dashboard/posts/{{ $post->slug }}/edit" class="btn btn-warning my-3 mr-1 btn-sm"><span data-feather="edit"></span> Edit</a>

           <form action="/dashboard/posts/{{ $post->slug }}" class="d-inline" method="POST">
            @method("delete")
            @csrf
            <button type="submit" class="btn btn-danger btn-sm my-3 mr-1" onclick="return confirm('yakin ingin dihapus?')">
                <span data-feather="x-circle"></span> Delete
            </button>
            </form>

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
        </div>
    </div>
</div>
@endsection