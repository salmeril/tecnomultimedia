void boton0(){
     pushMatrix();
      //rectMode(CENTER);
      fill(colorBoton0);
        rect(boton0X, boton0Y, largBot0, anchBot0 );
         textSize(text0Tam);
        fill(colorIniciar);
        text(iniciar, xText0, yText0);
        
     popMatrix();
       
        
        if ((mouseX > boton0X ) && (mouseX < boton0X + largBot0) && (mouseY > boton0Y) && (mouseY < boton0Y + anchBot0)) {
            colorBoton0=(#FFFFFF);
            colorIniciar=(#000000);
            text0Tam=20;
            opa1 = true;
        }else {
            colorBoton0=(#000000);
            colorIniciar=(#FFFFFF);
            text0Tam = 15;
        }
        if (mousePressed && opa1==true ) {
            pant=1;
        }
        
        
        pushMatrix();
       
        
        popMatrix();
        
        
        
}

void boton1AB(){
     
        //rectMode(CENTER);
       push();
            fill(#FFFFFF);
            textSize(20);
            text(textos[1], 50, 150);
            //textAlign(CENTER);
            fill(#FFFFFF);
            
            fill(colorBoton1B);
            rect(boton1XB, boton1YB, largBot1B, anchBot1B);
        pop();
        
            fill(colorBoton1A);
            rect(boton1XA, boton1YA, largBot1A, anchBot1A );
        
        
         if ((mouseX > boton1XA ) && (mouseX < boton1XA + largBot1A) && (mouseY > boton1YA) && (mouseY < boton1YA + anchBot1A)) {
            colorBoton1A = (#000000);
            colorTextBoton1A =(#FFFFFF);
            text1ATam = 30;
            opa2 = true;
        }else {
            colorBoton1A=(#000000);
            colorTextBoton1A =(#FFFFFF);
            text1ATam = 15;
            opa2 = false;
        }
        if (mousePressed && opa2==true ) {
            pant=2;
        }

        fill(colorTextBoton1A);
        textSize(text1ATam);
        text(a, boton1XA, boton1YA +50);       
        

        if ((mouseX > boton1XB ) && (mouseX < boton1XB + largBot1B) && (mouseY > boton1YB) && (mouseY < boton1YB + anchBot1B)) {
            colorBoton1B = (#000000);
            colorTextBoton1B =(#FFFFFF);
            text1BTam = 30;
            opa3=true;
            
        }else {
            colorBoton1B=(#000000);
            colorTextBoton1B =(#FFFFFF);
            text1BTam = 15;
            opa3=false;
        }
        if (mousePressed && opa3==true ) {
            pant=3;
        }

        fill(colorTextBoton1B);
        textSize(text1BTam);
        text(b, boton1XB, boton1YB +50);   

       
}       

void boton2AB(){
     
        //rectMode(CENTER);
       push();
            fill(#FFFFFF);
            textSize(20);
            text(textos[2], 50, 150);
            //textAlign(CENTER);
            fill(#FFFFFF);
            
            fill(colorBoton1B);
            rect(boton1XB, boton1YB, largBot1B, anchBot1B);
        pop();
            fill(colorBoton1A);
            rect(boton1XA, boton1YA, largBot1A, anchBot1A );
        
        
         if ((mouseX > boton1XA ) && (mouseX < boton1XA + largBot1A) && (mouseY > boton1YA) && (mouseY < boton1YA + anchBot1A)) {
            colorBoton1A = (#FFFFFF);
            colorTextBoton1A =(#000000);
            text1ATam = 30;
            opa4  = true;
        }else {
            colorBoton1A=(#000000);
            colorTextBoton1A =(#FFFFFF);
            text1ATam = 15;
            opa4  = false;
        }
        if (mousePressed && opa4 ==true ) {
            pant=6;
        }

        if ((mouseX > boton1XB ) && (mouseX < boton1XB + largBot1B) && (mouseY > boton1YB) && (mouseY < boton1YB + anchBot1B)) {
            colorBoton1B = (#000000);
            colorTextBoton1B =(#FFFFFF);
            text1BTam = 30;
            opa5=true;
            
        }else {
            colorBoton1B=(#000000);
            colorTextBoton1B =(#FFFFFF);
            text1BTam = 15;
            opa5=false;
        }
        if (mousePressed && opa5==true ) {
            pant=10;
        }

        fill(colorTextBoton1B);
        textSize(text1BTam);
        text(b, boton1XB, boton1YB +50);   

        fill(colorTextBoton1A);
        textSize(text1ATam);
        text(a, boton1XA, boton1YA +50);       
        
}       


void boton3AB(){
     
        //rectMode(CENTER);
       push();
            fill(#FFFFFF);
            textSize(20);
            text(textos[3], 50, 150);
            //textAlign(CENTER);
            fill(#FFFFFF);
            
            fill(colorBoton1B);
            rect(boton1XB, boton1YB, largBot1B, anchBot1B);
        pop();
            fill(colorBoton1A);
            rect(boton1XA, boton1YA, largBot1A, anchBot1A );
        
        
         if ((mouseX > boton1XA ) && (mouseX < boton1XA + largBot1A) && (mouseY > boton1YA) && (mouseY < boton1YA + anchBot1A)) {
            colorBoton1A = (#FFFFFF);
            colorTextBoton1A =(#000000);
            text1ATam = 30;
            opa13 = true;
        }else {
            colorBoton1A=(#000000);
            colorTextBoton1A =(#FFFFFF);
            text1ATam = 15;
            opa13 = false;
        }
        if (mousePressed && opa13==true ) {
            pant=4;
        }

        if ((mouseX > boton1XB ) && (mouseX < boton1XB + largBot1B) && (mouseY > boton1YB) && (mouseY < boton1YB + anchBot1B)) {
            colorBoton1B = (#FFFFFF);
            colorTextBoton1B =(#000000);
            text1BTam = 30;
            opa14=true;
            
        }else {
            colorBoton1B=(#000000);
            colorTextBoton1B =(#FFFFFF);
            text1BTam = 15;
            opa14=false;
        }
        if (mousePressed && opa14==true ) {
            pant=5;
        }

        fill(colorTextBoton1B);
        textSize(text1BTam);
        text(b, boton1XB, boton1YB +50);   

        fill(colorTextBoton1A);
        textSize(text1ATam);
        text(a, boton1XA, boton1YA +50);       
        
}       


void boton4AB(){
     
        //rectMode(CENTER);
       push();
            fill(#FFFFFF);
            textSize(20);
            text(textos[4], 50, 150);
            //textAlign(CENTER);
            fill(#FFFFFF);
            
          
        pop();
              
        
}       

void boton5AB(){
     
        //rectMode(CENTER);
       push();
            fill(#FFFFFF);
            textSize(20);
            text(textos[5], 50, 150);
            //textAlign(CENTER);
            fill(#FFFFFF);
            
          
        pop();
              
        
}       

void boton6AB(){
     
        //rectMode(CENTER);
       push();
            fill(#FFFFFF);
            textSize(20);
            text(textos[6], 50, 150);
            //textAlign(CENTER);
            fill(#FFFFFF);
            
           
        pop();
            
}     

void boton7AB(){
     
        //rectMode(CENTER)
        push();
            fill(#FFFFFF);
            textSize(20);
            text(textos[7], 50, 150);
            //textAlign(CENTER);
            fill(#FFFFFF);
        pop();    
}

void botonSig6(){
     pushMatrix();
        //rectMode(CENTER);

        rect(botonSX, botonSY, largBotS, anchBotS );
        fill(colorBoton0);
        popMatrix();
        if ((mouseX > botonSX ) && (mouseX < botonSX + largBot0) && (mouseY > botonSY) && (mouseY < botonSY + anchBot0)) {
            colorBoton0 = (#000000);
            colorIniciar=(#FFFFFF);
            textSTam = 20;
            opa6 = true;
        }else {
            colorBoton0=(#FFFFFF);
            colorIniciar=(#000000);
            textSTam = 15;
            opa6=false;
        }
        if (mousePressed && opa6==true ) {
            pant=7;
        }

        text(sig, xTextS, yTextS);
        textSize(textSTam);
        fill(colorIniciar);
}

void botonSig7(){
     pushMatrix();
        //rectMode(CENTER);

        rect(botonSX, botonSY, largBotS, anchBotS );
        fill(colorBoton0);
        popMatrix();
        if ((mouseX > botonSX ) && (mouseX < botonSX + largBot0) && (mouseY > botonSY) && (mouseY < botonSY + anchBot0)) {
            colorBoton0 = (#000000);
            colorIniciar=(#FFFFFF);
            textSTam = 20;
            opa7 = true;
        }else {
            colorBoton0=(#FFFFFF);
            colorIniciar=(#000000);
            textSTam = 15;
            opa7=false;
        }
        if (mousePressed && opa7==true ) {
            pant=8;
        }

        text(sig, xTextS, yTextS);
        textSize(textSTam);
        fill(colorIniciar);
}


void boton8AB(){
     
        //rectMode(CENTER)
        push();
            fill(#000000);
            textSize(20);
            text(textos[8], 10, 150);
            //textAlign(CENTER);
            fill(#000000);
        pop();    
}
void botonSig8(){
     pushMatrix();
        //rectMode(CENTER);

        rect(botonSX, botonSY, largBotS, anchBotS );
        fill(colorBoton0);
        popMatrix();
        if ((mouseX > botonSX ) && (mouseX < botonSX + largBot0) && (mouseY > botonSY) && (mouseY < botonSY + anchBot0)) {
            colorBoton0 = (#000000);
            colorIniciar=(#FFFFFF);
            textSTam = 20;
            opa8 = true;
        }else {
            colorBoton0=(#FFFFFF);
            colorIniciar=(#000000);
            textSTam = 15;
            opa8=false;
        }
        if (mousePressed && opa8==true ) {
            pant=9;
        }

        text(sig, xTextS, yTextS);
        textSize(textSTam);
        fill(colorIniciar);
}

void boton9AB(){
     
        //rectMode(CENTER)
        push();
            fill(#000000);
            textSize(20);
            text(textos[9], 50, 150);
            //textAlign(CENTER);
            fill(#000000);
        pop();    
}
void botonReinicio(){
     pushMatrix();
        //rectMode(CENTER);

        rect(botonSX, botonSY, largBotS, anchBotS );
        fill(colorBoton0);
        popMatrix();
        if ((mouseX > botonSX ) && (mouseX < botonSX + largBot0) && (mouseY > botonSY) && (mouseY < botonSY + anchBot0)) {
            colorBoton0 = (#000000);
            colorIniciar=(#FFFFFF);
            textSTam = 20;
            opa9= true;
        }else {
            colorBoton0=(#FFFFFF);
            colorIniciar=(#000000);
            textSTam = 15;
            opa9=false;
        }
        if (mousePressed && opa9==true ) {
            pant=0;
        }

        text(reiniciar, xTextS, yTextS);
        textSize(textSTam);
        fill(colorIniciar);
}

void boton10AB(){
     
        //rectMode(CENTER);
       push();
            fill(#FFFFFF);
            textSize(20);
            text(textos[10], 50, 150);
            //textAlign(CENTER);
            fill(#FFFFFF);
            
            fill(colorBoton1B);
            rect(boton1XB, boton1YB, largBot1B, anchBot1B);
        pop();
            fill(colorBoton1A);
            rect(boton1XA, boton1YA, largBot1A, anchBot1A );
        
        
         if ((mouseX > boton1XA ) && (mouseX < boton1XA + largBot1A) && (mouseY > boton1YA) && (mouseY < boton1YA + anchBot1A)) {
            colorBoton1A = (#FFFFFF);
            colorTextBoton1A =(#000000);
            text1ATam = 30;
            opa10 = true;
        }else {
            colorBoton1A=(#000000);
            colorTextBoton1A =(#FFFFFF);
            text1ATam = 15;
            opa10 = false;
        }
        if (mousePressed && opa10==true ) {
            pant=11;
        }

        if ((mouseX > boton1XB ) && (mouseX < boton1XB + largBot1B) && (mouseY > boton1YB) && (mouseY < boton1YB + anchBot1B)) {
            colorBoton1B = (#FFFFFF);
            colorTextBoton1B =(#000000);
            text1BTam = 30;
            opa11=true;
            
        }else {
            colorBoton1B=(#000000);
            colorTextBoton1B =(#FFFFFF);
            text1BTam = 15;
            opa11=false;
        }
        if (mousePressed && opa11==true ) {
            pant=12;
        }

        fill(colorTextBoton1B);
        textSize(text1BTam);
        text(b, boton1XB, boton1YB +50);   

        fill(colorTextBoton1A);
        textSize(text1ATam);
        text(a, boton1XA, boton1YA +50);       
        
}       

void boton11AB(){
     
        //rectMode(CENTER);
    push();
        fill(#FFFFFF);
        textSize(20);
        text(textos[11], 50, 150);
            //textAlign(CENTER);
        fill(#FFFFFF);
            
           
    pop();
            
} 
void boton12AB(){
     
        //rectMode(CENTER);
    push();
        fill(#FFFFFF);
        textSize(20);
        text(textos[12], 50, 150);
            //textAlign(CENTER);
        fill(#FFFFFF);
            
           
    pop();
            
}         

void boton13AB(){
     
        //rectMode(CENTER);
    push();
        fill(#FFFFFF);
        textSize(20);
        text(textos[13], 50, 150);
            //textAlign(CENTER);
        fill(#FFFFFF);
            
           
    pop();
            
} 

void botonCreditos(){
     
        //rectMode(CENTER);
    pushMatrix();
        fill(colorBotonC);
        rect(botonSX, botonSY, largBotS - 25, anchBotS );
        fill(bTC);
        textSize(textSTam);
        text(creditos, xTextS - 10, yTextS);
        
        
    popMatrix();
        

// noFill();
//           fill(#000000);
//           strokeWeight(1);
//           fill(colorBoton4);
//           rect(botonX4, botonY4, tamBotonX4, tamBotonY4);
//           textSize(20);
//           fill(colorTexto4);
//           text(texto4b, textX4, textY4);

   
        if ((mouseX > botonSX ) && (mouseX < botonSX + largBot0) && (mouseY > botonSY) && (mouseY < botonSY + anchBot0)) {
            colorBotonC = (#FFFFFF);
            bTC=(#000000);
            textSTam = 20;
            opa12= true;
        }else {
            colorBotonC=(#000000);
            bTC=(#FFFFFF);
            textSTam = 15;
            opa12=false;
        }
        if (mousePressed && opa12==true ) {
            pant=13;
        }

        pushMatrix();
         
        popMatrix();
       
    
    
}