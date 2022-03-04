<?php


namespace App\Models;


use App\Db;

class Post
{

    public $id;
    public $title;
    public $content;
    public $created_at;

    public static $table = 'posts';


    public static function findAll() {
        $db = new Db();
        $data = $db->query('SELECT * FROM posts');

        return $data;
    }


}