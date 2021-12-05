@extends('layouts/main')

@section('container')
  <h2 class="text-center">{{ $title }}</h2>
  <div class="container">
    <div class="row justify-content-center">
      <form action="/blog" class="col-8">
        @if (request("category"))
            <input type="hidden" name="category" value="{{ request("category") }}">
        @endif
        @if (request("author"))
            <input type="hidden" name="author" value="{{ request("author") }}">
        @endif
        <div class="input-group mb-3 pt-2">
          <input type="text" class="form-control" placeholder="Search" name="search" value="{{ request("search") }}">
          <div class="input-group-append">
            <button class="btn btn-danger" type="submit">Search</button>
          </div>
        </div>
      </form>
    </div>
  </div>
  
@if ($posts->count())
<div class="card mb-3">
  @if ($posts[0]->image)
  <div style="max-height: 350px; overflow: hidden">
      <img class="img-fluid mb-3" src="{{ asset('storage/'.$posts[0]->image) }}" alt="Card image cap">
  </div>
  @else
  <img class="img-fluid mb-3" src="https://source.unsplash.com/1200x400?{{ $posts[0]->category->name }}" alt="Card image cap">
  @endif
    <div class="card-body text-center">
      <h3 class="card-title"><a href="/blog/{{ $posts[0]->slug }}" style="text-decoration: none" class="text-dark">{{ $posts[0]->title }}</a></h3>
      <p class="my-3">
          <small class="text-muted">
              By <a href="/blog?author={{ $posts[0]->author->username }}" style="text-decoration: none">{{ $posts[0]->author->name }}</a> in <a href="/blog?category={{ $posts[0]->category->slug }}" style="text-decoration: none;">{{ $posts[0]->category->name }}</a> {{ $posts[0]->created_at->diffForHumans(); }}
          </small>
        </p>
      <p class="card-text">{{ $posts[0]->excerpt }}</p>
      <a href="/blog/{{ $posts[0]->slug }}" class="btn btn-primary">Read More</a>
    </div>
  </div>
  <div class="container">
    <div class="row">
      @foreach ($posts->skip(1) as $item)
      <div class="col-md-4 mb-3">
        <div class="card">
          <div class="position-absolute text-white px-3 py-2 rounded-right" style="background-color: rgba(0, 0, 0, 0.7)"><a class="text-white text-decoration-none" href="/blog?category={{ $item->category->slug }}">{{ $item->category->name }}</a></div>
          @if ($item->image)
          <div style="max-height: 350px; overflow: hidden">
              <img class="img-fluid mb-3" src="{{ asset('storage/'.$item->image) }}" alt="Card image cap">
          </div>
          @else
          <img class="img-fluid mb-3" src="https://source.unsplash.com/1200x400?{{ $item->category->name }}" alt="Card image cap">
          @endif
          <div class="card-body">
            <h5 class="card-title">{{ $item->title }}</h5>
            <p class="my-3">
              <small class="text-muted">
                  By <a href="/blog?author={{ $item->author->username }}" style="text-decoration: none">{{ $item->author->name }}</a> {{ $item->created_at->diffForHumans(); }}
              </small>
            </p>
            <p class="card-text">{{ $item->excerpt }}</p>
            <a href="/blog/{{ $item->slug }}" class="btn btn-primary">Read More</a>
          </div>
        </div>
      </div>
      @endforeach
    </div>
  </div>
@else
  <p class="text-center fs-4">No Post found.</p>
@endif

<div class="d-flex justify-content-center">
  {{ $posts->links() }}
</div>

@endsection