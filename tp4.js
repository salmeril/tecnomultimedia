/*
Lucas Federico Salmero
Comision: 5
video explicativo: https://youtu.be/KRiblFOmWR8
*/


let bricks = []
let vidas = 3
let puntos = 0
let notificacion
let pausa = false
let contador = 0
let pantalla = 0
let iniciar = false
let creditos = false

const numColumnas = 28
const numFilas = 10
const tamBricksWidht = 60
const tamBricksHeight = 20
const brickEspacio = 5

let tamCarritoWidht = 110
let tambCarritoHeight = 75
let carritoX
let carritoY
let carritoVel = 8
let carritoPosX

let bolaX
let bolaY
let diametroBola = 20
let velX
let velY

let juegoTerminado = false

let posXBotonIniciar
let posYBotonIniciar 
let anchoBotonIniciar
let largoBotonIniciar

let posXBotonCreditos
let posYBotonCreditos 
let anchoBotonCreditos
let largoBotonCreditos
let colorTextIniciar
let posYtextoCreditos

let colorBotonIniciar
let colorBotonCreditos
let colorTextCreditos

let sobreBotonIniciar = false
let sobreBotonCreditos = false


let posXBotonBack
let PosYBotonBack
let LargoBotonBack
let anchoBotonBack
let colorBotonBack
let colorTextBotonBack
let sobreBotonBack = false
let clickBack = false

function setup() {
  createCanvas(windowWidth, windowHeight)
  velX = random(1, 8)
  velY = random(1, 8)
  bolaX = width / 2
  bolaY = height / 2
  carritoX = mouseX
  carritoPosX = width / 2
  createBricks();


  posXBotonCreditos = width/2
  posYBotonCreditos = height/2 + 150
  posYtextoCreditos = height/2 + 180 
  posXBotonIniciar = width/2
  posYBotonIniciar = height/2
  anchoBotonIniciar = 50
  largoBotonIniciar =  150
  anchoBotonCreditos = 50
  largoBotonCreditos= 150
  colorBotonIniciar = 255
  colorBotonCreditos = 255
  colorTextIniciar = 0
  colorTextCreditos = 255

  posXBotonBack = width - 55
  PosYBotonBack = 25
  LargoBotonBack = 50
  anchoBotonBack = 25

  colorBotonBack = 255
  colorTextBotonBack = 0
  
}

function draw() {
  
  switch (pantalla) {
    case 0:
      background(0)
      
      titulos()
      Botones()
      textoBotones()

      if (sobreBotonIniciar===true) {
      colorBotonIniciar = 0
      colorTextIniciar = 255
        
      } else {
        sobreBotonIniciar = false;
        iniciar = false
        colorBotonIniciar = 255
        colorTextIniciar = 0
      }
      if(iniciar === true && sobreBotonIniciar === true){
        pantalla = 1
      }
      

      if (sobreBotonCreditos === true) {
        colorBotonCreditos = 0
        colorTextCreditos = 255
          
        } else {
          sobreBotonCreditos = false;
          colorBotonCreditos = 255
          colorTextCreditos = 0
        }
        if(creditos === true && sobreBotonCreditos === true){
        pantalla = 2
  
        }
     
      break;
  
    case 1:
      background(0)
      hud()
      grillaLadrillos()
      carrito()
      ball()
      reiniciar()

      break;


      case 2:
    background(0)
    textSize(35)
    text('Se mueve con el mouse, \n si pierdes las 3 vidas, GAME OVER', width/2, height/2)
    botonback()
    textoBack()

    if (clickBack === true) {
      pantalla=0
      
    }
    break;
  }
  
  

}








