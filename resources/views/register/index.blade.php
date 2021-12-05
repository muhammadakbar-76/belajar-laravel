@extends('layouts/main')

@section('container')
<div class="row justify-content-center align-items-center">
    <div class="col-lg-5">
        <h1 class="h3 mb-3 font-weight-normal text-center">Registration Account</h1>
        <form class="form-registration" action="/register" method="POST">
            @csrf
            <label for="name" class="sr-only">Your Name</label>
            <input type="text" id="name" class="form-control rounded-top @error("name") is-invalid @enderror" placeholder="Your name.." name="name" value="{{ old("name") }}" required>
            @error("name")
            <div id="validationServer03Feedback" class="invalid-feedback">
                {{ $message }}
            </div>
            @enderror
            <label for="username" class="sr-only">Username</label>
            <input type="text" id="username" class="form-control @error("username") is-invalid @enderror" placeholder="Your username.." name="username" value="{{ old("username") }}" required>
            @error("username")
            <div id="validationServer03Feedback" class="invalid-feedback">
                {{ $message }}
            </div>
            @enderror
            <label for="email" class="sr-only">email</label>
            <input type="email" id="email" class="form-control @error("email") is-invalid @enderror" placeholder="Your email.." name="email" value="{{ old("email") }}" required>
            @error("email")
            <div id="validationServer03Feedback" class="invalid-feedback">
                {{ $message }}
            </div>
            @enderror
            <label for="inputPassword" class="sr-only">Password</label>
            <input type="password" id="inputPassword" class="form-control rounded-bottom @error("password") is-invalid @enderror" placeholder="Password" name="password" value="{{ old("password") }}" required>
            @error("password")
            <div id="validationServer03Feedback" class="invalid-feedback">
                {{ $message }}
            </div>
            @enderror
            <button class="btn btn-lg btn-danger btn-block mt-3" type="submit">Login</button>
        </form>
        <small class="d-block text-center mt-2">Already Registered? <a href="/login">Login Now</a></small>
    </div>
</div>
@endsection