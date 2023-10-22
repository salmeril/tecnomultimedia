class Rata {
    constructor(imagenRata) {
      this.x = random(width);
      this.y = random(height);
      this.velX = random(1, 3);
      this.velY = random(1, 3);
      this.imagen = imagenRata;
    }
  
    mostrar() {
      fill(255);
      noStroke();
      image(rataImg, this.x, this.y, 30, 30); // Muestra la imagen de la rata
     // ellipse(this.x, this.y, 20, 20);
    }
  
    mover() {
      this.x += this.velX;
      this.y += this.velY;
  
      // Verifica los límites de la pantalla
      if (this.x < 0 || this.x > width) {
        this.velX *= -1;
      }
      if (this.y < 0 || this.y > height) {
        this.velY *= -1; 
      }
    }
  }
  