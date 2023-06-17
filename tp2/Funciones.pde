void grilla(){
    push();
    for (int i = 0; i < width ; i++) {
        for (int j = 0; j < height; j++) {

       
        if (i % 2 == 0 && j % 2 == 0) {
          fill(grilla1Color);
          //rotate(radians(frameCount));
        }
        if (i % 2 == 0 && j % 2 !=0) {
          fill(grilla1Color2);
          //rotate(-radians(frameCount));
        }
        if (i % 2 != 0 && j % 2 == 0) {
          fill(grilla1Color2);
          //rotate(-radians(frameCount));
        }

        if (i % 2 != 0 && j % 2 != 0) {
          fill(grilla1Color);
          //rotate(radians(frameCount));
        }

       if (mousePressed == oka) {
          ancho = random(10, 30);
          alto = random (10, 30);
        
       }else{
          ancho=30;
          alto=10;
       }
      
      if (mouseY <=height/4 && frameCount % 2 ==0) {
        grilla1Color = #000000;
        grilla1Color2 = #FFFFFF;
      }else if (frameCount % 2 !=0) {
        grilla1Color = #FFFFFF;
        grilla1Color2 = #000000;
      }

        rect(i*ancho, j*alto, ancho, alto);
      }
  }
    pop();
}








void grilla2(){



  fondo.beginDraw();
      for (int k = 0; k < width ; k++) {
        for (int l = 0; l < height; l++) { 
          if (mousePressed == oka) {
            fondo.rotate(radians(frameCount/3));
            colorprincipalBlanco = colorAzul;
            colorprincipalBlanco1 = colorRojo;
            colorPrincipalNegro = colorVerde;
            colorPrincipalNegro1 = colorNegro;
            
            
            
          }else{
            colorprincipalBlanco = #FFFFFF;
            colorPrincipalNegro = #000000;
            colorprincipalBlanco1 = #FFFFFF;
            colorPrincipalNegro1 = #000000;
          }
          
           if (mouseX <= k*ancho /4 && frameCount % 2 ==0) {
        colorprincipalBlanco = #000000;
        colorPrincipalNegro = #FFFFFF;
        colorprincipalBlanco1 = #000000;
        colorPrincipalNegro1 = #FFFFFF;

      }else if (frameCount % 2 !=0) {
        colorprincipalBlanco = #FFFFFF;
        colorPrincipalNegro = #000000;
        colorprincipalBlanco1 = #FFFFFF;
        colorPrincipalNegro1 = #000000;
      }

          //ver tema del map, recorda vamos hacer el map de manera que moviendo el mouse  cambie colores de grilla
      
        if (l % 2 == 0 && k % 2 == 0) {
          fondo.fill(colorprincipalBlanco);
          
        }
        if (l % 2 == 0 && k % 2 !=0) {
          fondo.fill(colorPrincipalNegro);
          //rotate(-radians(frameCount));
        }
        if (l % 2 != 0 && k % 2 == 0) {
          fondo.fill(colorPrincipalNegro1);
          //rotate(-radians(frameCount));
        }

        if (l % 2 != 0 && k % 2 != 0) {
          fondo.fill(colorprincipalBlanco1);
          //rotate(radians(frameCount));
        }   
        
       
      
    fondo.rect(k*ancho1, l*alto1, ancho1, alto1);
        }
    }
  fondo.endDraw();
}



void imagenCargada(){
    push();
    image(imagen1, 0, 0);
    pop();
}
