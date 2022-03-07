<?php


namespace App\Models;

use App\Db;
use App\Model;

class Post extends Model
{

    public $title;
    public $content;
    public $created_at;
    public const TABLE = 'posts';


//    public static function findAll() {
//        $db = new Db();
//        return $db->query('SELECT * FROM ' . self::TABLE, [], self::class);
//    }



}