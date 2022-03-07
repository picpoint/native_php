<?php


namespace App\Models;

use App\Model;

class User extends Model
{

    public $id;
    public $name;
    public $login;
    public $password;
    public $email;
    public $created_at;
    public static $table = 'users';


}