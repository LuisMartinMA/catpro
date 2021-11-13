const botonlogin = document.querySelector('#buttonLogin');
let correo = document.querySelector('#user');
let clave = document.querySelector('#password');






function mensaje(mensaje, tipo) {
    const divMensaje = document.createElement('DIV');
    divMensaje.classList.add("width-100");

    //veridificndo el tipo
    if (tipo === 'error') {
        divMensaje.classList.add('error');

    } else {


    }
    divMensaje.textContent = mensaje;

    //agregar al DOM
    document.querySelector('#login').insertBefore(divMensaje, document.querySelector('#usuario'));

    //quitar la alerta
    setTimeout(() => {
        divMensaje.remove();
    }, 4000);
}

function login(respuesta) {

    if (Array.isArray(respuesta)) {
        console.log(respuesta);
    } else {
        mensaje("error usuario o contraseña", "error")

    }
}

async function envioDatos(url, metodo, datos) {

    try {
        var data = datos;
        const opciones = {
            method: metodo,
            headers: {
                'Content-Type': 'application/json'
            },
            body: JSON.stringify(data)
        };
        const resp = await fetch(url, opciones);
        if (resp.ok) {
            respuesta = resp.json;
            login(respuesta);
        }
    } catch (e) {
        console.log(error);
    }
}


function validarLogin(e) {
    e.preventDefault();
    var correoUsuario = correo.value;
    var claveUsuario = clave.value;

    var datos = {
        correoUsuario: correoUsuario,
        claveUsuario: claveUsuario
    }

    envioDatos("../src/controllers/UsuarioControllers.php?op=acceso", 'POST', datos);

}


function eventListener() {
    botonlogin.addEventListener("click", validarLogin);
}
eventListener();