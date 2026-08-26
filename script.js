const btnE1=document.querySelector(".btn")
btnE1.addEventListener("mouseover",(e)=>{
    const x=e.pageX-btnE1.offsetleft;
    const y=e.pageY-btnE1.offsetop;
btnE1.style .setproperty("--posX", x+ "px")
btnE1.style.setproperty("--posY", y + "px")
})