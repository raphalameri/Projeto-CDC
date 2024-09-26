function distorcer(){
    document.getElementById("interativo").style.width = "260px";
    document.getElementById("interativo").style.height = "300px"; 
    document.getElementById("interativo").style.cursor = "pointer";
}

function voltar(){
    document.getElementById("interativo").style.width = "200px";
    document.getElementById("interativo").style.height = "250px"; 
}

function conduzir(){
   window.location.href = "./solucao.html";
}
