<?php

class Post {
    private $conn;
    private $table = 'Estudio';

    public $id;
    public $category_id;

    public function __construct($db) {
        $this->conn = $db;
    }
    
    public function read () {
        $query = 'SELECT
        id,
        idprofesor,
        idasignatura
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