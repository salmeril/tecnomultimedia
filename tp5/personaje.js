class Personaje {
    constructor(imagen) {
      this.x = width / 2;
      this.y = height / 2;
      this.imagen = personajeImg;
    }
  
    mostrar() {
    const anchoSprite = 100; // Cambia el ancho del sprite
    const altoSprite = 100;  // Cambia el alto del sprite
    image(this.imagen, this.x, this.y, anchoSprite, altoSprite);
      fill(255, 0, 0);
      //ellipse(this.x, this.y, 30, 30);
    
    }
  
    mover() {
      this.x = mouseX;
      this.y = mouseY;
    }
  
    estaCerca(rata) {
      let distancia = dist(this.x, this.y, rata.x, rata.y);
      return distancia < 25;
    }
  }
  