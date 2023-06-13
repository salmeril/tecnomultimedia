/*
Lucas Federico Salmero
Comision: 5
*/
PImage imagen1;
float ancho;
float alto;
float ancho1, alto1;
float cantidadX, cantidadY; 
int i;
int j;
int k;
int l;

float posX;
float posY;
float dCirculo;
float ubiX;
float ubiY;



void setup() {
    size(800, 400);
    frameRate(60);

    posX = 0;
    posY = 0;
    dCirculo = 170;
    ubiX = 600;
    ubiY = 200;
    cantidadX = 20;
    cantidadY = 20;
    ancho = 30;
    alto = 10; 
    ancho1 =5;
    alto1= 20;
    imagen1 = loadImage("imagen.jpg");

}

void draw() {
    background(#ffffff);
    
    //asi se hace la grilla...como me costo la puta madre

    grilla();
   // circulo();
    grilla1();
 
    
    //imagenCargada();
    
}


//30 de alto 10 de ancho

void imagenCargada(){
    push();
    image(imagen1, 0, 0);
    pop();
}



    //asi se hace la grilla...como me costo la puta madre

void circulo(){
    circle(ubiX, ubiY, dCirculo);

}

void grillaEnCirculo(){
    
    
}