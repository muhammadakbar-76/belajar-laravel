@extends('dashboard.layouts.main')

@section('container')
<div class="d-flex justify-content-between flex-wrap flex-md-nowrap align-items-center pt-3 pb-2 mb-3 border-bottom">
    <h1 class="h2">Create New Posts</h1>
  </div>
  <div class="col-lg-8">
      <form action="/dashboard/posts" method="POST"  class="mb-5" enctype="multipart/form-data">
        @csrf
        <div class="form-group">
          <label for="title">Title</label>
          <input type="text" class="form-control create-posts-title @error("title") is-invalid @enderror" id="title" name="title" value="{{ old("title") }}" required autofocus>
          @error("title")
              <div id="validationServer03Feedback" class="invalid-feedback">
                  {{ $message }}
              </div>
            @enderror
        </div>
        <div class="form-group">
          <label for="slug">Slug</label>
          <input type="text" class="form-control create-posts-slug @error("slug") is-invalid @enderror" id="slug" name="slug" value="{{ old("slug") }}" readonly>
          @error("slug")
          <div id="validationServer03Feedback" class="invalid-feedback">
              {{ $message }}
          </div>
        @enderror
        </div>
        <div class="form-group">
          <label for="category">Category</label>
          <select class="custom-select @error("category_id") is-invalid @enderror" name="category_id">
            @foreach ($categories as $category)
            @if (old("category_id") == $category->id)
            <option value="{{ $category->id }}" selected>{{ $category->name }}</option>
            @else
            <option value="{{ $category->id }}">{{ $category->name }}</option>
            @endif
            @endforeach
          </select>
          @error("category_id")
          <div id="validationServer03Feedback" class="invalid-feedback">
              {{ $message }}
          </div>
        @enderror
        </div>
        <div class="form-group">
          <label for="fileInput">Input Image</label>
          <img class="img-preview img-fluid mb-3 col-sm-5">
          <div class="input-group mb-3">
            <div class="input-group-prepend">
              <span class="input-group-text" id="inputGroupFileAddon01">Upload</span>
            </div>
            <div class="custom-file">
              <input type="file" class="custom-file-input @error("image") is-invalid @enderror" id="fileInput" aria-describedby="inputGroupFileAddon01" name="image">
              <label class="custom-file-label" for="fileInput">Choose Image</label>
            </div>
          </div>
          @error("image")
          <div id="validationServer03Feedback" class="invalid-feedback">
              {{ $message }}
          </div>
        @enderror
        </div>
        <div class="form-group">
          <label for="body">Body</label>
          @error("body")
          <p class="text-danger">{{ $message }}</p>
          @enderror
          <input id="body" type="hidden" name="body" value={{ old("body") }}>
          <trix-editor input="body"></trix-editor>
        </div>
        <button type="submit" class="btn btn-primary">Create Posts</button>
      </form>
  </div>
@endsection