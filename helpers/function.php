<?php
// INSERT INTO `users` (`id`, `login`, `password`) VALUES (NULL, 'user', MD5('12345'));
// SELECT * FROM `users`
// SELECT * FROM `users` WHERE login = 'admin';
session_start();

$bd = mysqli_connect('localhost', 'root', '', 'base');
if(!bd)
    {
        die( 'connection error');
    }
else
    {
        alert('ok');
    }
?>