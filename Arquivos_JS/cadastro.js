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
let inputCPF= document.getElementById("CPF")
 inputCPF.addEventListener("input",function(elemento)
{let value=elemento.target.value 
    if(value.length ==14){
        inputCPF.classList.remove("erro")
        inputCPF.classList.add("correto")
    } else{
        inputCPF.classList.remove("correto")
        inputCPF.classList.add("erro")   
    }
    
     })
     let inputSenha= document.getElementById("senha")
     inputSenha.addEventListener("input",function(elemento)
    {let value=elemento.target.value 
        if(value.length >=4){
            inputSenha.classList.remove("erro")
            inputSenha.classList.add("correto")
        } else{
            inputSenha.classList.remove("correto")
            inputSenha.classList.add("erro")   
        }
        
         })
    
