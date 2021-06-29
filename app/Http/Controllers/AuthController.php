<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\User;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Validator;


class AuthController extends Controller
{
    public function  __construct(){
        $this->middleware('auth:api', ['except'=>['login','register']]);
    }

    public function login(Request $request){
             //$validator = $request->validated();
             $validator = Validator::make(
                 $request->all(),[
                     'email'=> 'required|email',
                     'password'=> 'required'
                 ]
             );
              
             if($validator->fails()){
                 return response()->json($validator->errors(), 400);
             }

             $token_validity = 24 * 60;
               $this->guard()->factory()->setTTL($token_validity);

               if(!$token = $this->guard()->attempt($validator->validated())){
                   return response()->json([
                       'error'=>'Unauthorized'
                   ], 401);
               }
               return $this->respondWithToken($token);

    }

    public function register(Request $request){
        $validator = Validator::make(
            $request->all(),[
                'firstName' => 'required|string|between:2,100',
                'middleName' => 'required|string|between:2,100',
                'lastName' => 'required|string|between:2,100',
                'email'=> 'required|email|unique:users',
                'password'=> 'required|confirmed|min:5',
                
            ]
        );
        if($validator->fails()){
            return response()->json([
                $validator->errors()
            ], 422);
        }
        $user = User::create(
            array_merge(
                $validator->validated(),
                ['password'=>bycrpt($request->password)]
            )
        );
        return response()->json(['message'=> 'User created successfully', 'user'=> $user]);
    }

    public function logout(){
        $this->guard()->logout();

        return response()->json(['message'=> 'User logged out successfully']);
    }

    public function profile()
    {
        return response()->json($this->guard()->user());
    }



    protected function respondWithToken($token){
        return response()->json([
            'token' => $token,
            'token_type'=>'bearer',
            'token_validity' => ($this->guard()->factory()->getTTL()*60),
        ]);
    }

    public function guard(){
        return Auth::guard();
    }
   

}


