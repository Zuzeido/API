<?php

class Database {
    private $srv = 'localhost';
    private $database_name = 'Nebrija';
    private $db_username = 'root';
    private $db_password = '';

    //Conexión
    public function connect() {
        $conn = null;

        try {
            $conn = new PDO('mysql:host=' .
                $this->srv . ';dbname=' .
                $this->database_name,
                $this->db_username,
                $this->db_password);
            $conn->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);

        }catch(PDOException $e){
            echo 'Error de conexión:' .$e->getMessage();
        }
        return $conn;
    }
}
