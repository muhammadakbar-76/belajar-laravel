<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;

class LoginController extends Controller
{
    public function index(){
        return view("login/index",[
            "title" => "Login",
            "active" => "login"
        ]);
    }

    public function authenticate(Request $request){
        
        $user = $request->validate([
            "email" => "required|email", //pakai email:dns klo mau ujungnya email valid. misal gmail.com
            "password" => "required"
        ]);

        if (Auth::attempt($user)) {
            $request->session()->regenerate();

            return redirect()->intended("/dashboard");
        }

        return back()->with("loginError","Login Failed");
    }

    public function logout(Request $request){
        Auth::logout();

        $request->session()->invalidate();
        $request->session()->regenerateToken();

        return redirect("/login");
    }
}
