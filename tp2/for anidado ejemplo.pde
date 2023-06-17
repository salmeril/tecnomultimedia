PGraphics fondo;
PGraphics mascara;
int j;
int i;

void setup() {
  size(300, 300);

  fondo  = createGraphics(width, height);
  mascara= createGraphics(width, height);

  mascara.beginDraw();
  mascara.circle(width/2, height/2, 50);
  mascara.endDraw();

  grilla();


  fondo.mask(mascara);
}

void draw() {
  image(fondo,0,0);
}

void grilla() {
  fondo.beginDraw();
  for (int i = 0; i < 10; i++) {
    for (int j = 0; j < 10; j++) {
      fondo.rect(i*30, j*30, 30, 30);
    }
  }
  fondo.beginDraw();
}



  if (l % 2 == 0 && k % 2 == 0) {
        fondo.fill(#FFFFFF);
        //rotate(radians(frameCount));
      }
      if (l % 2 == 0 && k % 2 !=0) {
        fondo.fill(#000000);
        //rotate(-radians(frameCount));
      }
      if (l % 2 != 0 && k % 2 == 0) {
        fondo.fill(#000000);
        //rotate(-radians(frameCount));
      }

      if (l % 2 != 0 && k % 2 != 0) {
        fondo.fill(#FFFFFF);
        //rotate(radians(frameCount));
      }   
        



        cosas no borar
        if(mouseX > i * ancho && mouseX < i * ancho + ancho
      && mouseY > j * alto && mouseY < j * alto + alto){
      }