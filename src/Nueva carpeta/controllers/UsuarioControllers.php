<?php
   require_once("../php/Conexion.php");
   require_once("../modells/UsuarioModells.php");
//creo un objeto tipo la clase importada 
   $usuario = new UsuarioModells();
//creo una estructura para sentencias multiples
   switch($_GET["op"]){
       //creo un caso para determinar la sentencia
       case "acceso":
         if ($_POST) {
            # code...
            foreach ($_POST as $clave=>$valor)
   		{
   		if (is_numeric($valor)) {
            # code...
            $claveUsuario=$valor;
         }else{
            $correoUsuario=$valor;
         }
   		
         }
	}
        //envio datos post conexcion ala clase importada y comparada y la guardo en la variable
           $datos=$usuario->get_login($_POST["correoUsuario"],$_POST["claveUsuario"]);
           //creo un if comparando creando un array y poniendo como parametro la variable con los datos enviados sea verdadero y cuento que el valor de datos sea mayor a sero 
            if (is_array($datos)==true and count($datos)>0) {
                //imprimo codificado con el metodo json encode la variable con el valor
             echo json_encode($datos);
            }else{
                 echo "error";
            }
        break;
   }


?>