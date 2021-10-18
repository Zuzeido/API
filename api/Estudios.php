<?php
include_once '../config/db.php';
include_once '../data/Estudio.php';

$database = new Database();
$db = $database->connect();


$post = new Post($db);

$resultado = $post->read();
$numeracion = $resultado->rowCount();

if($numeracion > 0) {
    $posts_arr = array();
   // $posts_arr['data'] = array();

    while($row = $resultado->fetch(PDO::FETCH_ASSOC)) {
        extract($row);

        $post_item = array(
            'id' => $id,
            'nombre' => $nombre,
        );
        array_push($posts_arr, $post_item);

       // array_push($posts_arr['data'], $post_item);
    }
    echo json_encode($posts_arr);
} else {

    echo json_encode(
        array('message' => 'No hay datos')
    );
}
