PImage imagenP1, imagenP2, imagenP3;
int pantalla = 1;
int segundos = 0;
PFont fuenteP1, fuenteP2, fuenteP3;
int movimientoYP1 = -25;
float escaladoTexto = 0.1;
float transparencia = 0;

void setup() {
  size(640, 480);
  textSize(30);

  imagenP1 = loadImage("honda-cbr-600-1988.jpg");
  imagenP2 = loadImage("honda-cbr-600-f2-1991.jpg");
  imagenP3 = loadImage("honda-cbr-600-f4-1999.jpg");
  
  //Fuentes para las pantallas
  fuenteP1 = loadFont("Cambria-BoldItalic-48.vlw");
  fuenteP2 = loadFont("Roboto-BlackItalic-48.vlw");
  fuenteP3 = loadFont("ROGFonts-Regular-40.vlw");
}

void draw() {
  background(200);

  if (frameCount % 60 == 0) {
    segundos = segundos + 1;
  }

  if (segundos <= 5) {
    image(imagenP1, 0, 0, 640, 480);
    fill(0);

    //texto pantalla 1
    textFont(fuenteP1, 24);
    textAlign(CENTER, CENTER);
    fill(#000000);
    text("En 1987 fue cuando se lanzo \nla Primer Honda CBR 600 F", 320, movimientoYP1);
    
    //movimiento del texto
    movimientoYP1 = movimientoYP1 + 1;
    
  } else if (segundos <= 10) {
    pantalla = 2;
    image(imagenP2, 0, 0, 640, 480);
    
    //texto pantalla 2
    textFont(fuenteP2, escaladoTexto);
    fill(#000000);
    text("La Honda CBR 600 F2 fue la CBR mas popular, \nquizas la mas vendida de la saga", 320, 30);
    
    //escalado de texto 
   escaladoTexto = escaladoTexto + 0.1;
    
  } else if (segundos > 10) {
    pantalla = 3;
    image(imagenP3, 0, 0, 640, 480);
    
    //transparencia texto pantalla 3
    textFont(fuenteP3);
    fill(255,255, 255,transparencia);
    textFont(fuenteP3, 16);
    textAlign(CENTER, CENTER);
    text("El gran cambio de la Honda CBR 600 \nllego en 1999 con su cuarta version. \nLa gran novedad llega de su chasis de Aluminio", 320, 45);
    
    //escalado de texto 
   transparencia = transparencia + 0.6;  

    //boton de reinicio
    fill(#0CE540);
    rect(530, 420, 100, 50);
    fill(0);
    textSize(14);
    textAlign(LEFT);
    text("Reiniciar", 535, 450);
  }
}


//reinicia los valores de las variables
void mousePressed() {
  //para que el evento funcione se tienen que cumplir todas las condiciones
  if (segundos > 6 && pantalla == 3 && mouseX > 530 && mouseX < 630 && mouseY > 420 && mouseY < 470) {
    segundos = 0;
    pantalla = 1;
    movimientoYP1 = -25;
    escaladoTexto = 0.1;
    transparencia = 0;
  }
}
