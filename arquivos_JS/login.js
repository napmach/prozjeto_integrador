// Voltar com o ESC 
//NÃO FUNCIONA 😭😭
// let voltar = document.querySelector("link_p_voltar");

// document.addEventListener("keydown",(e)=> {
//     if(e.code == "Escape") {
//         voltar.click();
//     }
// })

// //Submit com aviso + não apagar form

// let btn_login = document.querySelector('button[type="submit"]')
// //redirecionar?
// btn_login.addEventListener("click",(e)=> {
//     alert("Login feito com sucesso!")
//     e.preventDefault()
// })

// //Validar email - senhar não precisa (?)

// A partir do vídeo

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
