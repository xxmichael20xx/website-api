<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use App\User;

class UserController extends Controller
{
  public function getUsers() {
    $user = User::all();

    return $user;
  }

  public function addUser(Request $request) {
    $data = [
      "name" => $request->name,
      "email" => $request->email,
      "password" => $request->password
    ];
    $user = User::create($data);

    if ($user) {
      return true;
    }

    return false;
  }

  public function checkEmail($email) {
    $user = User::where("email", $email)->first();
    
    return $user;
  }

  public function login(Request $request) {
    $auth = $request->only("email", "password");

    if (Auth::attempt($auth)) {
      return true;
    }

    return false;
  }
}
