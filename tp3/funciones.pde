void fondo( int imagenFondo) {
  image(fondosDePantallas[imagenFondo], 0, 0, 600, 600);
}

void flujo( int imagenFondo, int posX, int posY) {
  image(fondosDePantallas[imagenFondo],posX, posY, 1100, 300);
}

void texto(int posY, int a, int b, int c) {
  fill(0);
  textSize(28);
  text(lineas[a], 25, posY);
  text(lineas[b], 25, separar(posY,25));
  text(lineas[c], 25,separar(posY,50));
}
//funcion que retorna valor
int separar (int posY, int num){
return (posY + num);
}

void botonInicio() {
  image(btn, 250, 350, 100, 100);
}

void botonSiguiente(int posY, int posT) {
  fill(0, 255, 0);
  rect(490, posY, 100, 40);
  fill(0);
  textSize(20);
  text("Siguiente", 500, posT);
}

void botonReiniciar() {
  fill(0, 255, 0);
  rect(250, 10, 100, 40);
  fill(0);
  textSize(20);
  text("Reiniciar", 260, 35);
}

void botncreditos(String texto, int posY) {//500
  fill(200, 20, 255);
  rect(235, posY, 135, 40);
  fill(0);
  textSize(20);
  text(texto, 240, posY+25);
}

//boton de opciones
void botonAoB(String a, String b,int posY ,int posT) {
  fill(#C12D2D);
  rect(160, posY, 120, 50);
  rect(340, posY, 120, 50);
  fill(0);
  textSize(24);
  text(a, 165, posT);
  text(b, 345, posT);
}
 //fondo del texto
void cuadradoTexto(int posY, int altura) {
  fill(63, 116, 7, 180);
  rect(20, posY, 550, altura);
}
