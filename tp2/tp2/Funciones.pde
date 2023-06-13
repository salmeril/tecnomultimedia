void grilla(){
    push();
    for (int i = 0; i < width ; i++) {
        for (int j = 0; j < height; j++) {

       
      
      if (i % 2 == 0 && j % 2 == 0) {
        fill(#000000);
        //rotate(radians(frameCount));
      }
      if (i % 2 == 0 && j % 2 !=0) {
        fill(#FFFFFF);
        //rotate(-radians(frameCount));
      }
      if (i % 2 != 0 && j % 2 == 0) {
        fill(#FFFFFF);
        //rotate(-radians(frameCount));
      }

      if (i % 2 != 0 && j % 2 != 0) {
        fill(#000000);
        //rotate(radians(frameCount));
      }     
    rect(i*ancho, j*alto, ancho, alto);
        }
    }
    pop();
}

void grilla1(){
    push();
    for (int k = 0; k < width ; k++) {
        for (int l = 0; l < height; l++) {

     
      if (l % 2 == 0 && k % 2 == 0) {
        fill(#FFFFFF);
        //rotate(radians(frameCount));
      }
      if (l % 2 == 0 && k % 2 !=0) {
        fill(#000000);
        //rotate(-radians(frameCount));
      }
      if (l % 2 != 0 && k % 2 == 0) {
        fill(#000000);
        //rotate(-radians(frameCount));
      }

      if (l % 2 != 0 && k % 2 != 0) {
        fill(#FFFFFF);
        //rotate(radians(frameCount));
      }   
        
      
    rect(k*ancho1, l*alto1, ancho1, alto1);
        }
    }
    pop();
    circle(ubiX, ubiY, dCirculo);
    noFill();
}