PImage cloe;

void setup() {
  size(800, 400);
  
  cloe = loadImage ("");
  
}

void draw(){
  background(149,161,234);
  
  image(cloe, 400, 0);
  
  //orejas
  stroke(1);
  fill(255);
  triangle(50,50,50,90,90,60);
  triangle(150,50,150,90,110,60);
  fill(250,184,194);
  triangle(55,55,55,95,95,65);
  triangle(145,55,145,95,105,65);
  
  //cuerpo
  fill(255);
  noStroke();
  ellipse(105,150,90,120);
  ellipse(80,195,20,60);
  ellipse(120,195,20,60);
  ellipse(150,160,25,75);
  stroke(0);
  strokeWeight(1);
  circle(120,220,10);
  circle(79,220,10);
  circle(150,195,11);
  
  //cara
  fill(255);
  stroke(0);
  ellipse(100,100,100,100);
 
  fill(240,208,148);
  ellipse(115,120,30,30);
  ellipse(85,120,30,30);
  
  stroke(1);
  fill(250,184,194);
  triangle(90,110,110,110,100,125);
  line(100,125,100,135);
  line(100,135,90,140);
  line(100,135,110,140);
  
  strokeWeight(1);
  line(115,115,135,105);
  line(117,119,135,120);
  line(115,123,135,130);
  line(85,115,65,105);
  line(83,119,65,120);
  line(85,123,65,130);
  
  fill(240,208,148);
  ellipse(80,90,20,20);
  ellipse(120,90,20,20);
  fill(0);
  ellipse(80,90,10,10);
  ellipse(120,90,10,10);
  
  
  
}
