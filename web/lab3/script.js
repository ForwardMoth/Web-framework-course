function div_creator(){
    const divs = document.querySelectorAll("div")

    for(let i=0;i<divs.length;i++){
        count = divs[i].textContent.length
        h2 = document.createElement("h2")
        h2.textContent = count 
        divs[i].before(h2)
    }
}
div_creator()

function div_end(){
    const body = document.body
    const div = document.createElement("div")
    div.id = "text"
    body.appendChild(div)
}
div_end()

function key_handle(el){
    const div = document.querySelector("#text")
    div.textContent += el.key
}

window.addEventListener("keypress", key_handle)
