function grillaLadrillos(){
    for(let i = 0; i < numFilas; i++){
      for(let j = 0; j < numColumas; j++){
       const x = j *(tamBricksWidht + brickEscpacio) + 50
       const y = i *(tamBricksHeight + brickEscpacio) + 50
        fill(255)
        rect(x, y, tamBricksWidht, tamBricksHeight)
  
      }
    }
  }


  function carrito() {
    carritoX = width/2 
    carritoY = height - 30
    fill(255)
    rect(carritoPosX, carritoY, tamCarritoWidht, tambCarritoHeight)
    carritoPosX= constrain(mouseX - tamBricksWidht / 2, 0, width - tamBricksWidht);

    
    if (bolaY + diamtroBola / 2 > carritoY && bolaY - diamtroBola / 2 < carritoY + tamBricksHeight && bolaX + diamtroBola / 2 > carritoPosX && bolaX - diamtroBola / 2 < carritoPosX + tamBricksWidht) {
        velX = random(-1, -8)
        velY= random(-1, -8);
    }     
  }



  function ball(){
    fill(255)
    ellipse(bolaX, bolaY, diamtroBola, diamtroBola)
    bolaX = bolaX + velX
    bolaY = bolaY + velY
   
    if (bolaX > width){
      velX = random(-1, -8)
      
          
  } else if (bolaX <= -0) {
      velX = random(1, 8)
      
     
  }
  if (bolaY >= height) {
      velY= random(-1, -8);
      
     
          
  }else if (bolaY <= -0) {
      velY= random(1, 8);
      
    
          
  }
  
    
  }
  