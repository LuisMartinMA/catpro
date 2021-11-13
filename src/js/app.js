function init() {

}

$(document).ready(function() {

});



$(document).on("click", "#buttonLogin", function() {
    var correoUsuario = $('#user').val();
    var claveUsuario = $('#password').val();

    if (correoUsuario == "" || claveUsuario == "") {
        console.log("vacio");

    } else {
        $.post("../src/controllers/UsuarioControllers.php?op=acceso", { correoUsuario: correoUsuario, claveUsuario: claveUsuario }, function(data) {
            data = JSON.parse(data);
            console.log(data);
        });
    }

});