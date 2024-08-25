// Voltar com o ESC 

let voltar = document.querySelector("link_p_voltar");

document.addEventListener("keydown",(e)=> {
    if(e.code == "Escape") {
        voltar.click();
    }
})

//Submit com aviso + não apagar form

let btn_login = document.querySelector('button[type="submit"]')
//redirecionar?
btn_login.addEventListener("click",(e)=> {
    alert("Login feito com sucesso!")
    e.preventDefault()
})