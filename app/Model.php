<?php


namespace App;


abstract class Model
{

    public $id;
    public const TABLE = '';


    public static function findAll() {
        $class = get_called_class();

        $db = new Db();
        $sql = 'SELECT * FROM ' . $class::TABLE;



        return $db->query($sql, [], $class);
    }


}