//Alumno: Lucas F. Salmeri
//comision: 5
//Link del video: https://youtu.be/l3-SgctMN-M



float boton0X = 250; 
float boton0Y= 300;
float diametro1=50;
float anchBot0 = 50;
float largBot0 = 70; 
int text0Tam = 15;
float xText0 = 270;
float yText0 = 330;
float distanga;
String iniciar = "Iniciar";
int cantidad = 13;


float botonSX = 250; 
float botonSY= 500;
float anchBotS = 50;
float largBotS = 100; 
int textSTam = 15;
float xTextS = 270;
float yTextS = 520;
String sig = "Siguiente";
String reiniciar = "Reiniciar";
String creditos ="Creditos";

boolean opa2=false;


String textos [];


color colorIniciar = (#FFFFFF);
color colorBoton0= (#000000);

boolean opa = false;
boolean prueba = false;

boolean pantallaDesicionA = false;
boolean pantallaDesiscionB = false;
boolean primerFinalA=false;
boolean primerFinalB = false;

PImage f0;
PImage imagenes[];

int pant;


float boton1XA = 0;
float boton1YA=300;
float anchBot1A=50;
float largBot1A=20;
float text1ATam = 40;
color colorBoton1A = (#FFFFFF);
color colorTextBoton1A = (#000000);
String a = "A";

float boton1XB = 580;
float boton1YB=300;
float anchBot1B=50;
float largBot1B=20;
float text1BTam = 40;
color colorBoton1B = (#FFFFFF);
color colorTextBoton1B = (#000000);
color colonBoton1B = color(#FFFFFF);
String b = "B";


float text2BTam = 40;
color colorBoton2B = (#FFFFFF);
color colorTextBoton2B = (#000000);
color colonBoton2B = color(#FFFFFF);


float text3BTam = 40;
color colorBoton3B = (#FFFFFF);
color colorTextBoton3B = (#000000);
color colonBoton3B = color(#FFFFFF);

color colorBotonC = (#000000);
color bTC = (#FFFFFF);



void setup() {
    size(600, 600);
    textos = new String [14];
    textos [1]= "En el pacífico pueblo de Hamelin, la vida era feliz y abundante, \n hasta que una plaga de ratones los invadió. \n\n\n A: Quedarse y ver que pasa\nB: salir de Hameling .";

    textos [2]="Te quedaste en hameling, El alcalde prometió una recompensa \n a quien liberara al pueblo de los roedores.\n \n \n A: Un joven flautista se presentó\nB: Te decides a presentarte vos. ";

    textos [3]="Decidiste irte: Empezaste a recorrer las calles de Hameling \n hasta llegar afuera del pueblo, \n caminaste unos metros y te quedaste en la parada del 98.\n depronto viste que venia el 2, sabiendo que el 3 te deja mas cerca.\n\n\n A: te subis, para que no te roben\nB: Te quedas a esperar el 3,  aunque sean las 00:00\n en pleno microcentro.";

    textos[4]="Llegaste sano y salvo a tu casa \n Ahora preparas la comida y pones un poco de musica, \n Cerras el dia comiendo y llendo a dormir...... FIN. ";

    textos [5] = "Decidis quedarte: Empezas a notar que esta muy oscuro \n En la calle no hay nadie y cerca hay 3 amigo de lo ajeno, \n No pasaron ni 20 minutos\n pero ya perdiste todo hasta las zapatillas\nllegas a tu casa en boxers y decides acostarte.....FIN.";

    textos [6]= "Con su música el joven flautista,\n hipnotizó a los ratones y los llevó lejos del pueblo.\nCuando el flautista regresó para recibir su recompensa,\n el alcalde se negó a pagarle, traicionando su palabra.";

    textos [7]="Enfurecido, el flautista decidió vengarse y \ntocó una melodía aún más cautivadora con ella, \natrajo a todos los niños del pueblo y los condujo hacia una cueva, \ndesapareciendo con ellos.";

    textos[8]= "Los padres, desesperados, \nbuscaron al flautista y el alcalde se arrepintió de su actitud,\n ofreciendo una mayor recompensa y disculpándose.\nEl flautista aceptó y, con su música, \nliberó a los niños, que regresaron a salvo a sus hogares.";

    textos [9]="El flautista se marchó con su merecida recompensa, \ndejando al pueblo con la alegría recuperada, \nlección aprendida: La importancia de cumplir las promesas.";

    textos [10] = "Te ofreciste para solucionar el prblema de las rata\n lo que no dijiste es que no sabes nada de como matar ratas\n\n\n A: Decir la verdad y dejar que se encargue otro \n B: Buscar la forma de Auyentarlas, para cobrar la plata";

    textos [11]= "Dijiste la verdad, el pueblo no se enojo.\n decidieron darle el cargo a otro sujeto que se propuso.\n Al que le dieron el trabajo, era un flacucho alto \ncon una flauta.";

    textos[12]="Decidiste encargarte vos. Intentastevarios metodos, \n El problema que ningun metodo funciono. \n decidiste desaparecer e irte de la ciudad. \n No sabemos que paso con las ratas,\n lo que si sabemos es que estas en las playas de brasil. \n FIN.";

    textos [13]= "CREDITOS:\n Ideas: Lucas Federico Salmeri \n Historia: ElFlautista de hameling \n El flautista de Hamelín es un cuento de los hermanos Grimm \n Derechos reservados. \n Los Hermanos Grimm fueron filólogos y folcloristas, Jacob Grimm  y Wilhelm Grimm.\n Sus cuentos más conocidos son Blancanieves, Hansel y Gretel,\n La bella durmiente, La Cenicienta, El gato con botas, Rapunzel,\n Caperucita roja. fueron censurados debido a su extrema dureza.";

    imagenes = new PImage [cantidad];

    for (int i = 0; i < cantidad; i++) {
       imagenes[i] = loadImage(i+".png");
      
    }
}

void draw() {
    background(#000000);
    

    switch(pant){
        //inicio
        case 0 :
        
        background(#000000);
        if (pant==0) {
            image(imagenes[0], 0, 0, 600, 600);
            
        }
        f0 = loadImage("0.png");
        //image(ima, 0, 0, 600, 600);
        
        
       boton0();
       
       botonCreditos();
       
        break;

        case 1 :
            background(#000000);
            
            if (pant==1) {
            image(imagenes[1], 0, 0, 600, 600);
            tint(215, 216, 231, 112);
            boton1AB();
            }
        break;

        case 2 :
             background(#000000);
            
            if (pant==2) {
            image(imagenes[2], 0, 0, 600, 600);
            tint(215, 216, 231, 112);
            
            boton2AB();
            }     
        break;

        case 3 :
             background(#000000);
            
            if (pant==3) {
            image(imagenes[3], 0, 0, 600, 600);
            tint(215, 216, 231, 112);
            
            boton3AB();
            
           
            }    
           
        break;

        case 4 :
            background(222, 122, 133);
                 background(#000000);
            
            if (pant==4) {
            image(imagenes[4], 0, 0, 600, 600);
            tint(215, 216, 231, 112);
            
            boton4AB();
            botonReinicio();
            
           
            }   
        break;

        case 5 :
            background(#FFFFFF);
             background(222, 122, 133);
                 background(#000000);
            
            if (pant==5) {
            image(imagenes[5], 0, 0, 600, 600);
            tint(215, 216, 231, 112);
            
            boton5AB();
            botonReinicio();
            }
        break;

        case 6 :
            
            
            if (pant==6) {
            image(imagenes[6], 0, 0, 600, 600);
            tint(215, 216, 231, 112);
            
            boton6AB();
            botonSig6();
            }
        break;

        case 7 :
            background(#000000);
            if (pant==7) {
            image(imagenes[7], 0, 0, 600, 600);
            tint(215, 216, 231, 112);
            
            boton7AB();
            botonSig7();
            }
        break;

        case 8 :
            background(#FFFFFF);
            if (pant==8) {
            image(imagenes[8], 0, 0, 600, 600);
            tint(215, 216, 231, 112);
            
            boton8AB();
            botonSig8();
            }
        break;

        case 9 :
            //fin
            background(33, 222, 55);
            if (pant==9) {
            image(imagenes[9], 0, 0, 600, 600);
            tint(215, 216, 231, 112);
            
            boton9AB();
            botonReinicio();
            }
        break;

        case 10 :
        
            background(33, 222, 55);
            if (pant==10) {
            image(imagenes[10], 0, 0, 600, 600);
            tint(215, 216, 231, 112);
            
            boton10AB();
            //botonReinicio();
            }
        break;

        case 11 :
            background(33, 222, 55);
            if (pant==11) {
            image(imagenes[11], 0, 0, 600, 600);
            tint(215, 216, 231, 112);
            
            boton11AB();
            botonReinicio();
            } 
        break;
        
        case 12 :
        background(33, 222, 55);
        if (pant==12) {
           image(imagenes[12], 0, 0, 600, 600);
           tint(215, 216, 231, 112);
            
         boton12AB();
         botonReinicio();
            } 
        break;
        //pantalla 12 - Creditos
        case 13 :
        background(33, 222, 55);
        if (pant==13) {
           image(imagenes[12], 0, 0, 600, 600);
           tint(215, 216, 231, 112);
            
         boton13AB();
         botonReinicio();
            } 
        break;			
        										
    }   
    }





