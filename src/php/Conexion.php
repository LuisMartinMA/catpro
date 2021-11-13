<?php
session_start();

class Conectar{
    protected $base;
    //funcion protegida
    protected function conexion(){
       try {
            //variable tipo objeto con valores de parametro las constantes de conexion:
        $conectar = $this->base = new PDO("mysql:local=localhost;dbname=registro de trabajadores","root","");
        return $conectar;
       } catch (\Throwable $th) {
           print "Error".$th->getMessage()."<br/>";
           die();

       }

    }



         public function set_name(){
             return $this->base->query("SET NAMES 'utf8'");
         }

         public function ruta(){

            return"http://localhost:80/catpro/";
         }

}
?>
