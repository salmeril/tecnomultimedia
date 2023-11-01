//Lucas Federico Salmeri
// 93087/5
//https://youtu.be/vkjO1q2Tnrk



let personajeImg; 
let personaje;
let ratas = [];
let rataImg;
let pantallaGanaste;
let pantallaPerdiste;
let puntaje = 0;
let tiempo = 60;
let estadoJuego = "jugando";

function preload() {
  // Carga la imagen del personaje
  personajeImg = loadImage('Flautista-recort.png');
  rataImg = loadImage('rata.png');
}

function setup() {
  createCanvas(windowWidth, windowHeight);
  personaje = new Personaje(personajeImg);
  pantallaGanaste = new Ganaste(tiempo);
  pantallaPerdiste = new Perdiste(tiempo);

  for (let i = 0; i < 10; i++) {
   ratas.push(new Rata(rataImg));
  }
}

function draw() {
  background(220);

  if (pantallaGanaste.ganaste) {
    pantallaGanaste.mostrar();
  } else if (pantallaPerdiste.perdiste) {
    pantallaPerdiste.mostrar();
  } else {
    if (estadoJuego === "jugando") {
      personaje.mostrar();
      personaje.mover();
      for (let i = ratas.length - 1; i >= 0; i--) {
        let rata = ratas[i];
        rata.mostrar();
        rata.mover();
        if (personaje.estaCerca(rata)) {
          puntaje += 10;
          ratas.splice(i, 1);
        }
      }
      if (random(1) < 0.02) {
        ratas.push(new Rata());
      }

      if (frameCount % 60 == 0 && tiempo > 0) {
        tiempo--;
      }

      if (puntaje >= 1000) {
        estadoJuego = "ganaste";
        pantallaGanaste.ganaste = true;
      } else if (tiempo <= 0) {
        estadoJuego = "perdiste";
        pantallaPerdiste.perdiste = true;
      }

      pantallaGanaste.tiempo = tiempo;
      pantallaPerdiste.tiempo = tiempo;
    }
  }

  textSize(16);
  fill(0);
  text("Puntaje: " + puntaje, 10, 20);
  text("Tiempo: " + tiempo, width - 100, 20);
}

function mousePressed() {
  if (pantallaGanaste.ganaste || pantallaPerdiste.perdiste) {
    if (pantallaGanaste.reiniciarJuego() || pantallaPerdiste.reiniciarJuego()) {
      ratas = [];
      for (let i = 0; i < 10; i++) {
        ratas.push(new Rata());
      }
      puntaje = 0;
      tiempo = 60;
      estadoJuego = "jugando";
      pantallaGanaste.ganaste = false;
      pantallaPerdiste.perdiste = false;
    }
  }
}
