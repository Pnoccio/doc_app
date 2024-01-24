<?php

namespace App\Http\Controllers;

use App\Models\User;
use App\Models\UserDetails;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Hash;
use Illuminate\Validation\ValidationException;

class UserController extends Controller
{
    public function index()
    {
        //
    }

    public function login(Request $request)
    {
        // validate the incoming inputs
        $request->validate([
            'email' => 'required|email',
            'password' => 'required',
        ]);

        // checking matching user
        $user = User::where('email', $request->email)->first();

        // check password
        if(!$user || ! Hash::check($request->password, $user->password)){
            throw ValidationException::withMessages([
                'email' => ['The provided credentials are incorrect'],
            ]);
        }

        // returning the generated token
        return $user->createToken($request->email)->plainTextToken;
    }

    public function register(Request $request)
    {
        // validate the incoming inputs
        $request->validate([
            'name' => 'required|string', 
            'email' => 'required|email', 
            'password' => 'required',
        ]);

        $user = User::create([
            'name' => $request->name,
            'email' => $request->email,
            'type' => 'user',
            'password' => Hash::make($request->password),
        ]);

        $userInfo = UserDetails::create([
            'user_id' => $user->id,
            'status' => 'active',
        ]);

        return $user;

    }

    public function store(Request $request)
    {
        //
    }

    public function show(string $id)
    {
        //
    }

    public function edit(string $id)
    {
        //
    }

    public function update(Request $request, string $id)
    {
        //
    }

    public function destroy(string $id)
    {
        //
    }
}
