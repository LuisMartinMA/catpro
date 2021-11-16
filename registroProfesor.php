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
    <link rel="stylesheet" href="src/css/normalize.css" />
    <link rel="stylesheet" href="src/css/stile.css" />
    <title>Document</title>
</head>

<body class="contenedor-docente imagen-fondo">
    
        <header class="header">
            <div class="contenedor contenedor-header">
                <div class="logo">
                    <img src="src/img/WhatsApp Image 2021-11-05 at 5.38.19 PM (1).jpeg" alt="cacecob logo" />
                </div>
                <nav class="nav">
                    <ul>
                        <li>
                            <details class=" details option border-50">
                                <summary class><i class="fas fa-tasks"></i></summary>
                             <div class="opciones-iconos border">
                                 <option class="" value="">
                                         <details class="justify-content width-100" >
                                        <summary class ="justify-content" > <p class="input-formulario" >alumnos</p> <i class="border-50 fas fa-user-graduate"></i></summary>
                                        <option class=" " value="">agregar</option>
                                        <option class="" value="">editar</option>
                                    </details>
                                </option>
                                <option class="" value="">
                                    <details class="justify-content width-100" >
                                        <summary class="justify-content" > <p class="input-formulario" >profesor</p> <i class="border-50 fas fa-user-tie"></i></summary>
                                        <option class="" value="">agregar</option>
                                        <option class="" value="">editar</option>
                                    </details>
                                </option>
                                <option class="" value="">
                                    <details class="justify-content width-100" >
                                        <summary class="justify-content" > <p class="input-formulario" >Documento</p> <i class=" border-50 far fa-id-card"></i></summary>
                                        <option class=" " value="">agregar</option>
                                        <option class="" value="">editar</option>
                                    </details>
                                </option>
                                <option class="" value="">
                                    <details class="justify-content width-100" >
                                        <summary class="justify-content" > <p class="input-formulario" >curso</p> <i class=" border-50 fas fa-balance-scale"></i></summary>
                                        <option class=" " value="">agregar</option>
                                        <option class=" " value="">editar</option>
                                    </details>
                                </option>

                                <option class=" " value="">
                                    <details class=" justify-content width-100" >
                                        <summary class="justify-content " > <p class="input-formulario" >certificado</p> <i class=" border-50 fas fa-medal"></i></summary>
                                        <option class=" " value="">agregar</option>
                                        <option class=" " value="">editar</option>
                                    </details>
                                </option>
                             </div>
                            </details>
                        </li>

                        <li>
                            <details class="details ">
                                <summary class="summary border-50"><i class="fas fa-user-edit"></i></summary>
                                <div class="opciones border">
                                    <option class="" value="">usuario</option>
                                     <option class="" value="">salir</option>
                                </div>
                            </details>
                        </li>
                    </ul>
                </nav>
            </div>
        </header>

        <section>
            <h1 class="h1">Ingrese los Datos del Docente</h1>
            <div class="contenedor curso-medidas">
                <div class="medidas-scroll">
                    <div class="scroll template2 border">
                        <div class="width-100 justify-content">
                            <label for="Docente" class="label-formulario">Nacionalidad</label>
                            <input type="text" name="TelDocente" class="border input-formulario">
                        </div>
                        <div class="width-100 justify-content">
                            <label for="NombreDocente" class="label-formulario">Nombre Completo :</label>
                            <input type="text" class="border input-formulario">
                        </div>
                        <div class="width-100 justify-content">
                            <label for="DocumentoDocente" class="label-formulario">Tipo Docuemnto : </label>
                            <details>
                                <summary>---Documento--</summary>
                            </details>
                        </div>
                        <div class="width-100 justify-content">
                            <label for="NumeroIdentidadDocente" class="label-formulario">Numero Documento </label>
                            <input type="number" class="border input-formulario">
                        </div>
                        <div class="width-100 justify-content">
                            <label for="DepartamentoDocente" class="label-formulario">Departamento : </label>
                            <details>
                                <summary>--Departamento--</summary>
                            </details>
                        </div>
                        <div class="width-100 justify-content">
                            <label for="ProvinciaDocente" class="label-formulario">Provincia : </label>
                            <details>
                                <summary>--Provincia--</summary>
                            </details>
                        </div>
                        <div class="width-100 justify-content">
                            <label for="CiudadDocente" class="label-formulario">Ciudad : </label>
                            <input type="text" name="CiudadDocente" class="border input-formulario">
                        </div>
                        <div class="width-100 justify-content">
                            <label for="DireccionDocente" class="label-formulario">Direccion :</label>
                            <input type="text" class="border input-formulario" name="DireccionDocente">
                        </div>
                        <div class="width-100 justify-content">
                            <label for="EmailDocente" class="label-formulario">Correo</label>
                            <input type="email" name="EmailDocente" class="border input-formulario">
                        </div>
                        <div class="width-100 justify-content">
                            <label for="TelDocente" class="label-formulario">Telefono</label>
                            <input type="tel" name="TelDocente" class="border input-formulario">
                        </div>

                        <div class="width-100 justify-content">
                            <label for="CursoDocente" class="label-formulario">Curso</label>
                            <details>
                                <summary>
                                    ---Curso--
                                </summary>
                            </details>
                        </div>
                        <div class="width-100 justify-content">
                            <label for="EspecialidadDocente" class="label-formulario">Especialidad : </label>
                            <input type="text" name="EspecialidadDocente" class="border input-formulario">
                        </div>
                        <div class="width-100 justify-content">
                            <label for="TituloDocente" class="label-formulario">Titulo : </label>
                            <input type="text" name="TituloDocente" class="border input-formulario">
                        </div>
                        <div class="width-100 justify-content">
                            <label for="InsDocente" class="label-formulario">Universidad</label>
                            <input type="text" name="InsDocente" class="border input-formulario">
                        </div>
                        <div class="display-column">
                            <button class="button button-negro">Guardar</button>
                        </div>
                    </div>
                </div>

            </div>
        </section>
        
</body>

</html>