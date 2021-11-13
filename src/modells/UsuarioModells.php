<?php
//creo una clased que herede metodos y funciones de otra clase en este caso de conexcion
  class UsuarioModells extends Conectar{
      
    public function get_login($correoUsuario,$claveUsuario){

        /*variable que se conect con un metodo de su padre por el metodo parents */
        $conectar=parent::conexion();
        parent::set_name ();
        
        $sentencia_login="SELECT * FROM usuarios WHERE correoUsuario=? AND claveUsuario=?";
        $sentencia_login = $conectar->prepare($sentencia_login);
        $sentencia_login->bindValue(1,$correoUsuario);
        $sentencia_login->bindValue(2,$claveUsuario);
        //ejecuto mi sentencia de comparacion sobre posibles usuarios deboldiendome un resultado
        $sentencia_login->execute();
        //retorno el dato al cual documentaremos la sentencia base de datos y lo guardaremos en la variable resultado
        return $resultado=$sentencia_login->fetchAll();
    }


  }
?>