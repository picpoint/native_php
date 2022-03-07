<?php

require __DIR__ . '/autoload.php';

use \App\Models\Post;
use \App\Models\User;



    $post = Post::findAll();
    var_dump($post);