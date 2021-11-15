const botonlogin = document.querySelector('#buttonLogin');
let correo = document.querySelector('#user');
let clave = document.querySelector('#password');

function mensaje(mensaje, tipo) {
    //crear el div 
    const divMensaje = document.createElement('DIV');


    //veridificndo el tipo
    if (tipo === 'error') {
        divMensaje.classList.add('error');

    } else {
        divMensaje.classList.add('ok');

    }
    divMensaje.textContent = mensaje;

    //agregar al DOM
    document.querySelector('#login').insertBefore(divMensaje, document.querySelector('#usuario'));

    //quitar la alerta
    setTimeout(() => {
        divMensaje.remove();
    }, 4000);
}


function login() {
    var correoUsuario = correo.value;
    var claveUsuario = clave.value;
    if (usuario == "" && password == "") {
        mensaje("llenar todos los datos", "error");
    } else {
        $.post("../src/controllers/UsuarioControllers.php?op=acceso", { correoUsuario: correoUsuario, claveUsuario: claveUsuario }, function(data) {
            data = json(data);
            console.log(data);
        });
    }

}



function eventListener() {

    botonlogin.addEventListener('click', login);
}
eventListener();