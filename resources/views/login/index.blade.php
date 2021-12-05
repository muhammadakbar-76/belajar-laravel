@extends('layouts/main')

@section('container')
<div class="row justify-content-center align-items-center">
    <div class="col-md-4">
        <h1 class="h3 mb-3 font-weight-normal text-center">Please Login</h1>
        @if (session()->has("success"))
        <div class="alert alert-success alert-dismissible fade show" role="alert">
           {{ session("success") }}
            <button type="button" class="close" data-dismiss="alert" aria-label="Close">
              <span aria-hidden="true">&times;</span>
            </button>
          </div>
        @endif

        @if (session()->has("loginError"))
        <div class="alert alert-danger alert-dismissible fade show" role="alert">
           {{ session("loginError") }}
            <button type="button" class="close" data-dismiss="alert" aria-label="Close">
              <span aria-hidden="true">&times;</span>
            </button>
          </div>
        @endif

        <form class="form-signin" action="/login" method="POST">
            @csrf
            <label for="inputEmail" class="sr-only">Email address</label>
            <input type="email" id="inputEmail" class="form-control @error("email") is-invalid @enderror" name="email" placeholder="Email address" required autofocus>
            @error('email')
               <div id="validationServer03Feedback" class="invalid-feedback">
                {{ $message }}
            </div>
            @enderror
            <label for="inputPassword" class="sr-only">Password</label>
            <input type="password" id="inputPassword" class="form-control @error("password") is-invalid @enderror" name="password" placeholder="Password" required>
            @error('password')
               <div id="validationServer03Feedback" class="invalid-feedback">
                {{ $message }}
            </div>
            @enderror
            <button class="btn btn-lg btn-danger btn-block" type="submit">Login</button>
        </form>
        <small class="d-block text-center mt-2">Not Registered?  <a href="/register">Register Now</a></small>
    </div>
</div>
@endsection