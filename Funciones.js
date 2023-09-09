function createBricks() {
  for (let i = 0; i < numFilas; i++) {
    bricks[i] = [];
    for (let j = 0; j < numColumnas; j++) {
      bricks[i][j] = {
        x: j * (tamBricksWidht + brickEspacio) + 50,
        y: i * (tamBricksHeight + brickEspacio) + 50,
        isBroken: false
      }
    }
  }
}



function grillaLadrillos() {
  for (let i = 0; i < numFilas; i++) {
    for (let j = 0; j < numColumnas; j++) {
      if (!bricks[i][j].isBroken) {
        fill(255);
        rect(bricks[i][j].x, bricks[i][j].y, tamBricksWidht, tamBricksHeight)

        // colisión con la bola
        if (bolaX + diametroBola / 2 > bricks[i][j].x && bolaX - diametroBola / 2 < bricks[i][j].x + tamBricksWidht &&
          bolaY + diametroBola / 2 > bricks[i][j].y && bolaY - diametroBola / 2 < bricks[i][j].y + tamBricksHeight) {
          bricks[i][j].isBroken = true
          velY = random(1, 8)
          puntos += 10
        }
      }
    }
  }
}



function carrito() {
  carritoY = height - 30
  fill(255)
  rect(carritoPosX, carritoY, tamCarritoWidht, tambCarritoHeight)
  carritoPosX = constrain(mouseX - tamCarritoWidht / 2, 0, width - tamCarritoWidht)

  if (bolaY + diametroBola / 2 > carritoY && bolaY - diametroBola / 2 < carritoY + tambCarritoHeight && bolaX + diametroBola / 2 > carritoPosX && bolaX - diametroBola / 2 < carritoPosX + tamCarritoWidht) {
    velY = random(-2, -8) 
  }
}



function ball() {
  fill(255);
  ellipse(bolaX, bolaY, diametroBola, diametroBola)
  bolaX = bolaX + velX
  bolaY = bolaY + velY

  if (bolaX > width){
    velX = random(-1, -8)
       
  } else if (bolaX <= -0) {
      velX = random(1, 8)
   
  }

  
  if (bolaY > height + diametroBola / 2) {
    vidas--;
    carritoX = width / 2 - tamCarritoWidht / 2;
    bolaX = width / 2;
    bolaY = height /2;
    velocidadX = 5;
    velocidadY = -5;

    if(vidas <= 0){
      textSize(64);
      fill(255, 0, 0);
      textAlign(CENTER, CENTER);
      text("Game Over", width / 2, height / 2);
      juegoTerminado = true;
      noLoop(); 
      
    }
   
  }
       
  else if (bolaY <= -0) {
      velY= random(1, 8)          
  }
}


function hud() {
  textSize(24);
  fill(255);
  text("Vidas: " + vidas, 20, 40);
  text("Puntos: " + puntos, 120, 40);
  
}


function mouseClicked() {
  if (mouseX > posXBotonIniciar && mouseX < posXBotonIniciar + largoBotonIniciar && mouseY > posYBotonIniciar && mouseY < posYBotonIniciar + anchoBotonIniciar) {
  
    console.log('click')
    iniciar = true

  }

  if (mouseX > posXBotonCreditos && mouseX < posXBotonCreditos + largoBotonCreditos && mouseY > posYBotonCreditos && mouseY < posYBotonCreditos + anchoBotonCreditos) {
  
    console.log('sobre')
    creditos = true  
      
    }





    if (mouseX > posXBotonBack && mouseX < posXBotonBack + LargoBotonBack && mouseY > PosYBotonBack && mouseY < PosYBotonBack + anchoBotonBack){
  
      clickBack= true 
        
      }else{
        clickBack=false
      }



  
  if (juegoTerminado === true) {
    vidas = 3;
    puntos = 0;
    juegoTerminado = false;
    loop();
    carritoX = width / 2 - tamCarritoWidht / 2;
    bolaX = width / 2;
    bolaY = height /2;
    velocidadX = 5;
    velocidadY = -5;
  }

  
}



function reiniciar() {
 if(juegoTerminado === true){
  text('Renicia con un click', mouseX, mouseY)
 }

  
}

function mouseMoved() {
  if (mouseX > posXBotonIniciar && mouseX < posXBotonIniciar + largoBotonIniciar && mouseY > posYBotonIniciar && mouseY < posYBotonIniciar + anchoBotonIniciar) {
  
  console.log('sobre')
  sobreBotonIniciar= true  
    
  }else{
    sobreBotonIniciar=false
  }

  if (mouseX > posXBotonCreditos && mouseX < posXBotonCreditos + largoBotonCreditos && mouseY > posYBotonCreditos && mouseY < posYBotonCreditos + anchoBotonCreditos){
  
    console.log('sobre 2')
    sobreBotonCreditos= true  
      
    }else{
      sobreBotonCreditos=false
    }





    if (mouseX > posXBotonBack && mouseX < posXBotonBack + LargoBotonBack && mouseY > PosYBotonBack && mouseY < PosYBotonBack + anchoBotonBack){
  
      sobreBotonBack= true 
      colorBotonBack=255
      colorTextBotonBack=0
        
      }else{
        sobreBotonBack=false
        colorBotonBack=0
        colorTextBotonBack=255
      }

    
}


function Botones() {
  fill(colorBotonIniciar)
  rect(posXBotonIniciar, posYBotonIniciar, largoBotonIniciar, anchoBotonIniciar)
  fill(colorBotonCreditos)
  rect(posXBotonCreditos, posYBotonCreditos, largoBotonCreditos, anchoBotonCreditos)
}



function textoBotones() {
  textSize(30)
  fill(colorTextIniciar)
  text('Iniciar', posXBotonIniciar + 30, posYBotonIniciar +40)
  
  textSize(22)
  fill(colorTextCreditos)
  text('Instrucciones', posXBotonCreditos + 10, posYtextoCreditos)
}

function titulos(){
  textSize(45)
    fill(255)
    text('ARKANOID \n Casero', width/2, height/4)
}


function botonback() {
  fill(colorBotonBack)
  rect(posXBotonBack, PosYBotonBack, LargoBotonBack, anchoBotonBack)
  
  
}


function textoBack() {
  textSize(15)
  fill(colorTextBotonBack)
  text('Back', posXBotonBack, PosYBotonBack )
}



