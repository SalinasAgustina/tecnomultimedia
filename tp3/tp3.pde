//link video https://youtu.be/Kp5DnBVo48c

int cant = 16;
PImage [] fondosDePantallas = new PImage [cant];
String [] lineas;
PImage btn;
int imagenFondo=0;

void setup () {
  size(600, 600);
  noStroke();
  btn =loadImage("botonInicio.png");

  //carga las img al array
  for (int i=0; i<cant; i++) {
    fondosDePantallas[i] = loadImage("imagen" + i + ".jpeg");
  }

  //carga el texto al array. cada linea de texto es un lugar del array
  lineas = loadStrings("textos.txt");
}


void draw () {
//funcion que muestra la imagen de fondo
  fondo(imagenFondo);
//condicionales para mostrar texto y botones
  if (imagenFondo==0) {
    botonInicio();
    botncreditos("Ver créditos",500);
    botncreditos("Ver Flujo", 550);
  } else if (imagenFondo==1) {
    botonSiguiente(10, 35);
    cuadradoTexto(490, 100);
    texto(525, 1, 2, 3);
  } else if (imagenFondo == 2) {
    cuadradoTexto(490, 100);
    texto(525, 4, 5, 6);
    botonAoB("Rescatar", "Abandonar", 430, 460);
  } else if (imagenFondo == 11) {
    cuadradoTexto(490, 100);
    texto(525, 7, 8, 9);
    botonReiniciar();
  } else if (imagenFondo == 3) {
    cuadradoTexto(5, 100);
    texto(35, 10, 11, 12);
    botonSiguiente(540, 565);
  } else if (imagenFondo == 4) {
    cuadradoTexto(5, 170);
    texto(35, 13, 14, 15);
    texto(110, 16, 17, 18);
    botonAoB("A", "B", 490, 520);
  } else if (imagenFondo == 12) {
    cuadradoTexto(490, 100);
    texto(525, 19, 20, 21);
    botonSiguiente(10, 35);
  } else if (imagenFondo == 13) {
    cuadradoTexto(490, 100);
    texto(525, 22, 23, 24);
    botonReiniciar();
  } else if (imagenFondo == 5) {
    cuadradoTexto(490, 100);
    texto(525, 25, 26, 27);
    botonSiguiente(10, 35);
  } else if (imagenFondo == 6) {
    cuadradoTexto(490, 100);
    texto(525, 28, 29, 30);
    botonSiguiente(10, 35);
  } else if (imagenFondo == 7) {
    cuadradoTexto(490, 100);
    texto(525, 31, 32, 33);
    botonSiguiente(10, 35);
  } else if (imagenFondo == 8) {
    cuadradoTexto(490, 100);
    texto(525, 34, 35, 36);
    botonSiguiente(10, 35);
  } else if (imagenFondo == 9) {
    cuadradoTexto(490, 100);
    texto(525, 37, 38, 39);
    botonSiguiente(10, 35);
  } else if (imagenFondo == 10) {
    cuadradoTexto(420, 160);
    texto(445, 40, 41, 42);
    texto(520, 43, 44, 45);
    botonReiniciar();
  }else if (imagenFondo == 14) {
    botncreditos("Volver al inicio",500);
  }else if (imagenFondo == 15) {
    flujo(imagenFondo,(-10),0);
    flujo(imagenFondo,(-500),300);
    botncreditos("Volver al inicio",500);
  }
  
}
//flujo( int imagenFondo)

void mousePressed() {
  //evento para boton de iniciar
  if (dist(mouseX, mouseY, 300, 400) < 50 && imagenFondo==0 ) {
    imagenFondo++;
  }
  //evento para boton de siguiente pantalla
  if (imagenFondo == 1 && mouseX > 490 && mouseX < 590 && mouseY > 10 && mouseY < 50) {
    imagenFondo++;
  } else if (imagenFondo == 3 && mouseX > 490 && mouseX < 590 && mouseY > 540 && mouseY < 580) {
    imagenFondo++;
  } else if (imagenFondo == 12 && mouseX > 490 && mouseX < 590 && mouseY > 10 && mouseY < 50) {
    imagenFondo++;
  } else if (imagenFondo == 5 && mouseX > 490 && mouseX < 590 && mouseY > 10 && mouseY < 50) {
    imagenFondo++;
  } else if (imagenFondo == 6 && mouseX > 490 && mouseX < 590 && mouseY > 10 && mouseY < 50) {
    imagenFondo++;
  } else if (imagenFondo == 7 && mouseX > 490 && mouseX < 590 && mouseY > 10 && mouseY < 50) {
    imagenFondo++;
  } else if (imagenFondo == 8 && mouseX > 490 && mouseX < 590 && mouseY > 10 && mouseY < 50) {
    imagenFondo++;
  } else if (imagenFondo == 9 && mouseX > 490 && mouseX < 590 && mouseY > 10 && mouseY < 50) {
    imagenFondo++;
  }
  //evento para pantalla 2, boton rescatar
  if (imagenFondo == 2 && mouseX >160 && mouseX < 280 && mouseY > 430 && mouseY < 480) {
    imagenFondo = 3;
  }
  //evento para pantalla 2, boton abandonar
  if (imagenFondo == 2 && mouseX >340 && mouseX < 460 && mouseY > 430 && mouseY < 480) {
    imagenFondo = 11;
  }
  //evento para pantalla 4, boton A
  if (imagenFondo == 4 && mouseX >160 && mouseX < 280 && mouseY > 490 && mouseY < 540) {
    imagenFondo = 12;
  }
  //evento para pantalla 4, boton B
  if (imagenFondo == 4 && mouseX >340 && mouseX < 460 && mouseY > 490 && mouseY < 540) {
    imagenFondo ++;
  }
  //evento para reiniciar
  if (imagenFondo == 10 && mouseX >250 && mouseX < 350 && mouseY > 10 && mouseY < 50) {
    imagenFondo = 0;
  }else if (imagenFondo == 11  && mouseX >250 && mouseX < 350 && mouseY > 10 && mouseY < 50) {
    imagenFondo = 0;
  }else if (imagenFondo == 13 && mouseX >250 && mouseX < 350 && mouseY > 10 && mouseY < 50) {
    imagenFondo = 0;
  }
  //pantalla de creditos
  if (imagenFondo == 14 && mouseX >235 && mouseX < 370 && mouseY > 500 && mouseY < 540) {
    imagenFondo = 0;
  }else if (imagenFondo == 0 && mouseX >235 && mouseX < 370 && mouseY > 500 && mouseY < 540) { //boton creditos
    imagenFondo = 14;
  }else if (imagenFondo == 15 && mouseX >235 && mouseX < 370 && mouseY > 500 && mouseY < 540) {
    imagenFondo = 0;
  }else if (imagenFondo == 0 && mouseX >235 && mouseX < 370 && mouseY > 550 && mouseY < 590) {//boton flujo de historia
    imagenFondo = 15;
  }
}
