@extends('layouts/main')

@section('container')

<div class="container">
    <h3>Post Categories</h3>
    <div class="row">
        @foreach ($categories as $item)
        <div class="col-md-4">
            <a href="/blog?category={{ $item->slug }}">
            <div class="card bg-dark text-white">
                <img class="card-img" src="https://source.unsplash.com/500x500?{{ $item->name }}" alt="Card image">
                <div class="card-img-overlay d-flex align-items-center p-0">
                    <h5 class="card-title text-center text-white flex-fill p-4" style="background-color: rgba(0, 0, 0, 0.7)">{{ $item->name }}</h5> 
                </div>
            </div>
        </a>
        </div>
        @endforeach
    </div>
</div>

@endsection