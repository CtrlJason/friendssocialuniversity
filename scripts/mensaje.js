const open = document.getElementById('open_chat');
const modal_container = document.getElementById('modal_container');
const close = document.getElementById('close_chat');
const open_fondo = document.getElementById('fondo');


open.addEventListener('click', () => {
    modal_container.classList.add('show')    
});
close.addEventListener('click', () => {
    modal_container.classList.remove('show')
}); 


/* document.getElementById("open").addEventListener("click", function() {
    document.getElementById("modal").style.display = "block";
});

document.getElementById("close").addEventListener("click", function() {
    document.getElementById("modal").style.display = "none";
});*/
