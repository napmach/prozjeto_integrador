// Voltar com o ESC 
document.addEventListener("keydown",(e)=> {
    if(e.code == "Escape") {        
        window.history.back();
    }
})

//Validar email e senha

const form = document.querySelector("#form_input");
const emailIpunt = document.querySelector("#email");
const senhaInput = document.querySelector("#senha");

form.addEventListener("submit", (e)=> {
    
    e.preventDefault();

    //Se o email está vazio
    if(emailIpunt.value === "" || !emailValido(emailIpunt.value)){
        alert("Por favor, preencha seus dados");
        return;
    }
    //Se a senha é válida
    if(!validarSenha(senhaInput.value, 6)){
        alert("A senha tem no mínimo 6 dígitos")
    }
    //Se tudo estiver preenchido, enviar
    form.submit();
})

//Funções - validar email c/ regex
function emailValido(email) {
    const emailRegex = new RegExp(
        // emaillegal5_lindo@host.com
        /^[a-zA-Z0-9._-]+@[a-zA-Z0--9._-]+\.[a-zA-Z]{2,}$/
    );

    if (emailRegex.test(email)){
        return true;
    }
    return false;
}
//validar senha
function validarSenha(password, minDigits){
    if(password.length >= minDigits){
        return true
    }
    return false
}
