<?php

class Post {
    private $conn;
    private $table = 'Asignatura';

    public function __construct($db) {
        $this->conn = $db;
    }
    
    public function read () {
        $query = 'SELECT
        id,
        nombre,
        idEstudio
        FROM
        ' . $this->table . '
            ORDER BY
            id ASC';

        $stmt = $this->conn->prepare($query);
        $stmt->execute();

        return $stmt;
    }
}





?>