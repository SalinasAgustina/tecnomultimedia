//link de video https://youtu.be/8KlylhO2rWI
int tamX, tamY;
int cant = 2 ;
int cantCuadrados = 19;
int angulo = 2;
PImage ilusionop;
int negro= 0;
int blanco=255;
boolean pos2 = false;
boolean pos3 = false;

void setup() {
  size(800, 400);
  ilusionop = loadImage("ilusionop.jpg");
  rectMode(CENTER);
  //funcion que retorna valor
  tamX = calcularTamX(cant);
  tamY= height/cant;
}

void draw() {
  image(ilusionop, 10, 10, 380, 380);
  //repeticion los modulos en X
  for (int j = 0; j < cant; j++) {
    //repeticion los modulos en Y
    for (int f = 0; f < cant; f++) {
      //rotacion y cantidad cuadrados dentro de los modulos interiores
      modulos(j, f, cantCuadrados, angulo, negro, blanco);
    }
  }
}

void mouseClicked() {
  //segun donde se hace click cambia el background
  if (mouseX > 400 && mouseX < 600 && mouseY > 0 && mouseY < 200) {
    background(255, 0, 0); //color para el modulo 1 (j=0, f=0)
    pos2 = false;
    pos3 = false;
  } else if (mouseX > 600 && mouseX < width && mouseY > 0 && mouseY < 200) {
    pos2 = true;
    background(0, 255, 0); //color para el modulo 2 (j=1, f=0)
    pos3 = false;
  } else if (mouseX > 400 && mouseX < 600 && mouseY > 200 && mouseY < height) {
    pos3 = true;
    background(0, 0, 255); //color para el modulo 3 (j=0, f=1)
    pos2 = false;
  } else if (mouseX > 600 && mouseX < width && mouseY > 200 && mouseY < height) {
    background(232, 0, 194); //color para el modulo 4 (j=1, f=1)
    pos2 = false;
    pos3 = false;
  } else {//click fuera de los modulos
    background(255);
    pos2 = false;
    pos3 = false;
  }

  //modulo1
  //si se hace click en el modulo 1, se aumenta  o disminuye la rotacion
  if (mouseX > 400 && mouseX < 600 && mouseY > 0 && mouseY < 200 && mouseButton == LEFT) {
    angulo++;
  } else if (mouseX > 400 && mouseX < 600 && mouseY > 0 && mouseY < 200 && mouseButton == RIGHT) {
    angulo--;
  }

  //modulo 4
  //si se hace click en el modulo 4: la cantidad de rect, el blanco, el negro y el angulo son randoms
  if (mouseX > 600 && mouseX < width && mouseY > 200 && mouseY < height) {
    cantCuadrados = round(random(3, 20));
    blanco = round(random(0, 255));
    negro = round(random(0, 255));
    angulo = round(random(-10, 10));
  }
}

void keyPressed() {
  //reinicia las variables
  if (key == 'r') {
    angulo = 2;
    background(255);
    cantCuadrados = 19;
    negro = 0;
    blanco = 255;
    pos2 = false;
    pos3 = false;
  }

  //modulo3
  //aumenta o disminuye la cantidad de cuadrados con el mouse sobre el modulo 3
  if (pos3 == true && keyCode == UP) {
    cantCuadrados++;
  } else if (pos3 == true && keyCode == DOWN) {
    cantCuadrados--;
  }


  //modulo2
  //aprentando "n" el negro se aclara. aprtando "ñ" el negro se oscurece
  if (mouseX > 600 && mouseX < width && mouseY > 0 && mouseY < 200 && key == 'n' && negro <= 255 && pos2 == true) {
    negro+=5;
  } else if (mouseX > 600 && mouseX < width && mouseY > 0 && mouseY < 200 && key == 'm' && negro >= 0 && pos2 == true ) {
    negro-=5;
  }

  //apretando "b" el blanco se oscurece, apretando "v" el blanco se alcara
  if (mouseX > 600 && mouseX < width && mouseY > 0 && mouseY < 200 && key == 'b' && blanco > 0 && pos2 == true) {
    blanco-=5;
  } else if (mouseX > 600 && mouseX < width && mouseY > 0 && mouseY < 200 && key == 'v' && blanco < 255 && pos2 == true ) {
    blanco+=5;
  }
}
