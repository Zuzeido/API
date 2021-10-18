<?php
include_once '../config/db.php';
include_once '../data/ProfeAsignatura.php';

$database = new Database();
$db = $database->connect();


$post = new Post($db);

$resultado = $post->read();
$numeracion = $resultado->rowCount();

if($numeracion > 0) {
    $posts_arr = array();

    while($row = $resultado->fetch(PDO::FETCH_ASSOC)) {
        extract($row);

        $post_item = array(
            'id' => $id,
            'idprofesor' => $idprofesor,
            'idasignatura' => $idasignatura
        );
        array_push($posts_arr, $post_item);

    }
    echo json_encode($posts_arr);
} else {

    echo json_encode(
        array('message' => 'No hay datos en la tabla profesores-asignaturas')
    );
}
