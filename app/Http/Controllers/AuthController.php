<?php

namespace App\Http\Controllers;

use App\Models\User;
use Illuminate\Http\Request;

class AuthController extends Controller
{
    public function login(Request $request){
        $pass=$request->pass;
        $email=$request->email;
        $user=User::auth($email, $pass);
       // return Crypt::encrypt($pass);
        if(sizeof($user)>0){
            $dataUser = [
                'id_user'        =>$user[0]->usuario_id,
                'name_user'      =>$user[0]->nombre1,
                'email_user'     =>$user[0]->nombre2,
                'fcreacion'      =>$user[0]->apellido1,
                'auth'           =>true
            ];
            session($dataUser);
            return ($dataUser);
        }else{
            return ('pass incorrecto');
         };

    }
}
