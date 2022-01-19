<?php

namespace App\Models;

use Illuminate\Contracts\Auth\MustVerifyEmail;
use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Foundation\Auth\User as Authenticatable;
use Illuminate\Notifications\Notifiable;
use Illuminate\Support\Facades\DB;
use Laravel\Sanctum\HasApiTokens;

class User extends Authenticatable{
    use HasApiTokens, HasFactory, Notifiable;

    public static function auth($email, $pass){
        $userInfo=DB::select("SELECT id_user,
                    name_user,
                    email_user,
                    pass_user
                FROM users
                WHERE
                    correo='{$email}'
                AND contrasena='{$pass}'");
        return ($userInfo);
    }
}
