//funcion que retorna valor
int calcularTamX(int cant) {
  return (400/cant);
}

//funcion con for para la repeticion de los cuadredos por modulo
void modulos(int j, int f, int cantCuadrados, int angulo, int negro, int blanco ) {
  for (int i = 0; i < cantCuadrados; i++) {
    pushMatrix();
    translate(400 + (tamX/2), tamY/2);
    rotate(radians(angulo)*i);
    colorByN(i, negro, blanco);
    cuadrado( j, f, i, tamX, tamY);
    popMatrix();
  }
}

//dibuja los cuadrados dentro de los modulos
void cuadrado(int j, int f, int i, int tamX, int tamY) {
  rect(j*tamX, f*tamY, tamX - (i *10), tamY - (i *10));
}

//pone en B o N a los cuadrados
void colorByN(int i, int negro, int blanco) {
  if (i % 2 == 0) {
    fill(negro);
  } else {
    fill(blanco);
  }
}
