<?php

namespace App\Http\Controllers;

use Request;
use App\Models\User;
use Illuminate\Support\Facades\Validator;
use Hash;
use Auth;
use Sessions;
use Redirect;

class LoginController extends Controller
{

    public function index()
    {
        return view('login');
    }  
      
    public function login(Request $request)
    {
            $rules = array(
              'email' => 'required|email', 
              'password' => 'required|alphaNum|min:6');
              $validator = Validator::make(Request::all() , $rules);
              if ($validator->fails())
                {
                return Redirect::to('login')->withErrors($validator)->withInput(Request::except('password'));
                }
                else
                {
                $userdata = array(
                  'email' => Request::Input('email') ,
                  'password' => Request::Input('password')
                );

                if (Auth::attempt($userdata))
                  {
                      return Redirect::to('dashboard');
                  }
                  else
                  {
                  return Redirect::to('dashboard');
                  }
                  
                }
              
    }
    public function dashboard()
    {   
            return view('dashboard');
    }
    
    public function signOut() {
        Session::flush();
        Auth::logout();

        return Redirect('login');
    }
    }
