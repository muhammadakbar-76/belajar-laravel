@extends('dashboard/layouts/main')

@section('container')
<div class="d-flex justify-content-between flex-wrap flex-md-nowrap align-items-center pt-3 pb-2 mb-3 border-bottom">
  <h1 class="h2">My Posts</h1>
</div>
<div class="table-responsive col-lg-8">
  <a href="/dashboard/posts/create" class="btn btn-primary btn-sm mb-3">Create New Post</a>
  @if (session()->has("success"))
  <div class="alert alert-success" role="alert">
    {{ session("success") }}
  </div>
  @endif
    <table class="table table-striped table-sm">
      <thead>
        <tr>
          <th>#</th>
          <th>Title</th>
          <th>Category</th>
          <th>Action</th>
        </tr>
      </thead>
      <tbody>
       @foreach ($posts as $post)
           <tr>
               <td>{{ $loop->iteration }}</td>
               <td>{{ $post->title }}</td>
               <td>{{ $post->category->name }}</td>
               <td>
                 <a href="/dashboard/posts/{{ $post->slug }}" class="btn btn-info btn-sm"><span data-feather="eye"></span></a>
                 <a href="/dashboard/posts/{{ $post->slug }}/edit" class="btn btn-warning btn-sm"><span data-feather="edit"></span></a>

                 <form action="/dashboard/posts/{{ $post->slug }}" method="post" class="d-inline" id="form-hapus">
                  @method("delete")
                  @csrf
                  <button type="submit" class="btn btn-danger btn-sm border-0" id="hapus-post" onclick="return confirm('apakah anda yakin ingin menghapus?')">
                    <span data-feather="x-circle"></span>
                  </button>
                </form>
                
               </td>
           </tr>
       @endforeach
      </tbody>
    </table>
  </div>
@endsection