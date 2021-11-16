const botonlogin = document.querySelector('#buttonLogin');
let cajacorreo = document.querySelector('#usuario');
let cajapasword = document.querySelector('#clave');
let users = document.querySelector('#user');
let password = document.querySelector('#password');




class LoginUsuario {
    constructor() {

    }

}

function conexion(url, metodo, correoUsuario, claveUsuario) {
    fetch(url, {
            method: metodo,
            headers: {
                'Content-Type': 'application/json; charset=UTF-8'
            },
            body: JSON.stringify({
                correoUsuario: correoUsuario,
                claveUsuario: claveUsuario
            })

        })
        .then(res => res.json())

    .then(res => console.log(res))



}
class UI {
    imprimirAlerta(mensaje, tipo) {
        const divMensaje = document.createElement('DIV');


        //veridificndo el tipo
        if (tipo === 'error') {
            divMensaje.classList.add('error');
            divMensaje.classList.add('border');
            divMensaje.classList.add('caja-error');
            document.querySelector('#usuario').classList.add('caja-error', 'border');
            document.querySelector('#clave').classList.add('caja-error',
                'border');

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

}
const ui = new UI();
const loginusuario = new LoginUsuario();

function login(e) {
    const correoUsuario = user.value;
    const claveUsuario = password.value;
    e.preventDefault();
    if (correoUsuario === "" || claveUsuario === "" || correoUsuario.length < 10 || claveUsuario.length < 10) {
        ui.imprimirAlerta("rellene todos los datos", "error");
    } else {
        conexion("../src/controllers/UsuarioControllers.php?op=acceso", 'POST', correoUsuario, claveUsuario);
    }
}

function eventListener() {
    botonlogin.addEventListener("click", login);

}

eventListener();