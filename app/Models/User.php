<?php


namespace App\Models;


use App\Db;

class User
{

    public $id;
    public $name;
    public $login;
    public $password;
    public $email;
    public $created_at;


    public static function findAll() {
        $db = new Db();
        return $db->query('SELECT * FROM users');
    }


}