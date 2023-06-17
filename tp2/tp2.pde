/*
Lucas Federico Salmero
Comision: 5
video explicativo: https://youtu.be/gjZDvRD0EhA
*/

PGraphics fondo;
PGraphics mascara;

boolean oka = true;





int estado1 = 0 ;
int estado2 = 1;

float numeraso;
float posX;
float posY;
float dCirculo;
float ubiX;
float ubiY;
float ubiX1;
float ubiY1;
PImage imagen1;
float ancho;
float alto;
float ancho1, alto1;
float cantidadX, cantidadY; 
int i;
int j;
float distanga;

color grilla1Color = #FFFFFF; 
color grilla1Color2 =#000000;

color colorprincipalBlanco = #FFFFFF;
color colorPrincipalNegro = #000000;
color colorprincipalBlanco1 = #FFFFFF;
color colorPrincipalNegro1 = #000000;

color colorBlanco = #FFFFFF;
color colorNegro = #000000; 
color colorRojo = #F91E0D;
color colorVerde = #29E30A;
color colorAzul = #1825EA;

float pp;
float pp1;



void setup(){
    size(800, 400);
    frameRate(60);

    distanga = dist(mouseX, mouseY, 600, 200);
    posX = 0;
    posY = 0;
    dCirculo = 230;
    ubiX = 600;
    ubiY = 200;
    ubiX1 = 600;
    ubiY1 = 200;
    cantidadX = 20;
    cantidadY = 20;
    ancho = 30;
    alto = 10; 
    ancho1 =10;
    alto1= 35;
    pp = 0;
    pp1= 0;
    imagen1 = loadImage("imagen.jpg");

    fondo = createGraphics(width, height);
    mascara = createGraphics(width, height);
    mascara.beginDraw();
    mascara.translate(ubiX, ubiY);
    mascara.circle(0, 0, dCirculo);
    mascara.endDraw();

    
  

}

void draw() {
    
    println("tiempo", numeraso);
    //background(#ffffff);
    //asi se hace la grilla...como me costo la puta madre


    grilla();
    
    textSize(48);
    push();
    
        
    image(fondo, posX, posY);
    
    pop();
    
    grilla2();
    push();
    
    fondo.mask(mascara);
    pop();
    imagenCargada();

    
}


