//VariableDeTexto
String texto0 = "Bienvenidos a la presentación \n Esto es una llave inglesa";
String texto0b = "Iniciar";
String texto1 = "Hola Soy una llave Inglesa.";
String texto2 = "Las llave inglesas las podes encontrar de mil medidas \n podes tener una para cada funcion o utilidad que necesites.";
String texto3 = "Existen diferentes tipos de llaves, \n segun lo que se necesite. \n LLaves inglesas, Picos de loro, etc.";
String texto4 = "FIN";
String texto4b = "Reiniciar";
//VairiableDeImagen
PImage imagen0;
PImage imagen1;
PImage imagen2;
PImage imagen3;

//VariableColor
color colorDeFondo1;
color colorDeFondo2;
color colorDelBoton;
color colorDeTexto0;
color texto1Color = (#000000);
float back1Color = (#FFFFFF);
float texto2Color = (#000000);
color colorTexto = (#000000);
color back4Color = (#CE0303);
color colorBoton4 = (#FFFFFF);
color colorTexto4 = (#000000);


//VariableDeFuente
PFont letra1;
PFont letra2;


//boolean
boolean pasaImagenes;

//movimiento
float vel1;
float botonX0;
float botonY0;
float tamBoton;
float x0;
float y0;
float x1;
float y1;
float velx1;
float vely1;
float d;
float alto;
float ancho;
float velx2;
float restaWid;
float efectoLetra3 = 30;
float contador2 = 0;
float x2;
float y2;
float x3 = 320;
float y3 = 0;
float vely3 = 4;
float posicionDelTextEnx2, posicionInicialEnX2;
float textoAvanza = 1;
float x4 = random(0, width);
float y4 = random(0, height);
float velX4 = 5;
float velY4 = 5;
float botonX4 = 0;
float botonY4 = 420;
float tamBotonX4 = 120;
float tamBotonY4 = 40;
float textX4 = 55;
float textY4 = 450;
float d1;
float tamBoton4 = 1;


//INT
int flotantex1;
int otraFlotantex1;
int resultado;
int contador = 0;
int pantalla = 0;
int masmas = 2;



boolean presion1;
boolean presion2;




void setup() {
    size(640, 480);
    frameRate(60);


//variables nombradas:

    imagen0 = loadImage("imagen0.png");
    imagen1 = loadImage("imagen2.png");
    imagen3 = loadImage("imagen3.png");
    vel1 = 15;
    flotantex1 = 50;
    otraFlotantex1 = 15;
    resultado = 2;
    velx1 = 2;
    vely1 = 2;
    x0 = width;
    y0 = height;
    botonX0 = 320;
    botonY0 = 220;
    tamBoton = 150;
    //presion1 = true;
    colorDelBoton = 0;
    ellipseMode(RADIUS);
    presion1 = false;
    x1 = random(0, width);
    y1 = random(0, height);
   colorDeTexto0 = #000000;
   letra1 = loadFont("AgencyFB-Bold-48.vlw");
   letra2 = loadFont("Consolas-BoldItalic-48.vlw");
   alto = height;
   x2 = 0;
   velx2 = 3;
   restaWid = 320;
   presion2 = false;
   
  
   


}

void draw(){
    
    //que dificil es el case, guardalo:
    
    println("contador: "+ contador);  
    println("contador 2" + contador2);

  
    //Pantalla 0        
    switch (pantalla) {
        
                
    case 0 :
        background(#87CEEB);
        textFont(letra1);
            textSize(30);
            fill(#87CEEB);

            circle(botonX0, botonY0, tamBoton);
            
            d = dist(mouseX, mouseY, botonX0, botonY0);
            
            if (frameCount % 3 == 0) {
                strokeWeight( random(12));
                fill(0);
                stroke(0, 0, random(127, 255));
                strokeWeight( random(30));
                point(random(width), random(height));
            }  
            

                if (d < tamBoton ) {
                    fill(0);
                    colorDeTexto0 = #FFFFFF;

                    textSize(50);
                    if (mousePressed){
                        presion1 = true;
                        
                        pantalla = 1;
                        
                    }


                } else  {
                    fill(255);
                    presion1 = false;
                    colorDeTexto0 = #000000;
                    
                    
                }
                ellipse(botonX0, botonY0, tamBoton, tamBoton);          
            fill(colorDeTexto0);
            text(texto0b, botonX0 - 35, botonY0 + 10);
            
           
        break;	



        //Pantalla 1    
        case 1 :
            textFont(letra2);
            contador = contador + masmas;   
            colorDeFondo1 = 255;
            background(back1Color + y1);
            image(imagen0, 0, 0);
            fill(1);
            textSize(30);
            fill(texto1Color);
            text(texto1, x1, y1);
            x1 = x1 + velx1;
            y1 = y1 + vely1;
        	
              
            if (x1 > width - restaWid){
                velx1 = -4;
                texto1Color = #FE0505;
                    
            } else if (x1 < -0) {
                velx1 = velx1 + 6;
                texto1Color = #03CB03;
               
            }
            if (y1 > height) {
                vely1 = -4;
                texto1Color = #D9D303;
               
                    
            }else if (y1 < -0) {
                vely1 = vely1 + 6;
                texto1Color = #1D03D9;
              
                    
            }

            if (contador >= 1000) {
                contador = 0;
                pantalla = 2;
                x1 = 0;
                y1 = 0;
                restaWid = 0;
            }
        break;



            //Pantalla 2   
            case 2 :
            contador = contador + masmas; 
                background(#FFFFFF);
                fill(300);
                image(imagen1, 0, 80, 640, 400);
                textSize(20);
                strokeWeight(30);
                stroke(0, 0, 0);
                fill(1);
                fill(texto2Color);
                text(texto2, x2, 50);
                textAlign(CENTER);

                x2 = x2 + velx2;
                
                texto2Color = texto2Color + x2;

          
                if (x2 > width + 240) {
                    x2=0 - 250;
                    
                }




                if (contador >= 1000) {
                    contador = 0;
                    pantalla = 3;
                }
            break;	

            case 3 :  
            contador++;
            contador = contador + masmas; 
            textFont(letra2);
            background(#000000);
            fill(244, 0, 100, 150);
            image(imagen3, 0, 0);
            textSize(efectoLetra3);
            text(texto3, x3, y3);
            textAlign(CENTER);
            
            y3 = y3 + vely3;

            if (y3 >= height){
                vely3 = -4;
            } else if (y3 <= 0) {
                vely3 = 4;
                
            }

            
                
             if (contador >= 1000) {
                    contador = 0;
                    pantalla = 4;
            }
            
        break;

        case 4 :
            background(back4Color);
            fill(#FFFFFF);
            textSize(100);
            text(texto4, x4, y4);
            x4 = x4 + velX4;
            y4 = y4 + velY4;

            if (x4 > width){
                velX4 = -random(1, 10);
                
                    
            } else if (x4 < -0) {
                velX4 = random(1, 10);
                
               
            }
            if (y4 > height) {
                velY4 = -random(1, 10);
                
               
                    
            }else if (y4 < -0) {
                velY4 = random(1, 10);
                                
            }

            noFill();
            fill(#000000);
            strokeWeight(1);
            fill(colorBoton4);
            rect(botonX4, botonY4, tamBotonX4, tamBotonY4);
            textSize(20);
            fill(colorTexto4);
            text(texto4b, textX4, textY4);
            
            
            if (mouseX > botonX4){
                colorBoton4 = #E7E30D;
                presion2 = true;
                

                
            }else{
                colorBoton4 = #FFFFFF;
                presion2 = false;
            }
            if (mouseY > botonY4){
                    colorBoton4 = #E7E30D;
                    presion2 = true;
                    textX4 = 55;
                    

            }else{
                colorBoton4 = #FFFFFF;
                presion2 = false;
            }
            
            if(mousePressed && presion2 == true){

                pantalla = 0;
            }
            

            
        break;	
    } 
} 
            







