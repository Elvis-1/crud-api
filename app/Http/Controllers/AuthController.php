<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\User;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Validator;
use App\Http\Requests\UserValidation;

class AuthController extends Controller
{
    public function __construct(){
        $this->middleware('auth:api',['except'=>['login','resgister']]);
    }

    public function login(UserValidation $request){
             $validator = $request->validated();

            
             if($validator->fails()){
                 return reponse()->json($validator->errors(), 400);
             }

    }


}


