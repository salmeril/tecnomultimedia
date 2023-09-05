let bricks = []
const numColumas = 28
const numFilas = 10
const tamBricksWidht = 60
const tamBricksHeight= 20
const brickEscpacio = 5

let tamCarritoWidht = 110
let tambCarritoHeight = 75
let carritoX
let carritoY
let carritoVel = 8
let moverIzquierda = false
let moverDerecha = false
let carritoPosX

let bolaX //= random()
let bolaY
let diamtroBola = 20
let velX 
let velY 




function setup() {
  createCanvas(windowWidth, windowHeight);
  velX = random(1, 8)
  velY = random(1, 8)
  bolaX = width/2
  bolaY = height/2
  bolaX += velX;
  bolaY += velY;
  carritoX = mouseX

  
}


function draw() {
 background(0);
  grillaLadrillos();
  carrito()
  ball()
  
}



