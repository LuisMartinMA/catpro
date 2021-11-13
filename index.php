<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <link rel="preconnect" href="https://fonts.googleapis.com" />
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin />
    <link href="https://fonts.googleapis.com/css2?family=Open+Sans:wght@300;400;500&family=Roboto:wght@500&display=swap" rel="stylesheet" />
    <script src="https://kit.fontawesome.com/ca3141d0e4.js" crossorigin="anonymous"></script>

    <link rel="stylesheet" href="src/css/" />
    <link rel="stylesheet" href="src/css/stile.css" />
    <title>Document</title>
</head>

<body class="contenedor-login imagen-fondo"class="contenedor-login imagen-fondo" >
    <div >
        <h1>Cacecob, Piura</h1>

        <div  id="login" class="login contenedor template display-column border">
           
            <div id="usuario" class="usuario">
                <label for="user" ><i class="fas fa-user"></i></label>
                <input class="border" id="user" name="user" placeholder="user" type="email" />
            </div>
            <div class="password">
                <label for="password"><i class="fas fa-lock"></i></label>
                <input class="border" name ="password" id="password" placeholder="clave" type="password" />
            </div>
            <button  type="button" id ="buttonLogin" class="border button button-negro button-login">aceptar</button>
            <button     class="border button button-rojo button-login">
          registrarse
            </button>
        </div>
    </div>
    <script src="src/js/jquery.js" ></script>
    <script src="src/js/app2.js"></script>
</body>

</html>