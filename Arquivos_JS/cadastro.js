 let inputNome= document.getElementById("nome")
 inputNome.addEventListener("input",function(elemento)
{let value=elemento.target.value 
    if(value.length >=5 && value.length<=30){
        inputNome.classList.remove("erro")
        inputNome.classList.add("correto")
    } else{
        inputNome.classList.remove("correto")
        inputNome.classList.add("erro")   
    }

})