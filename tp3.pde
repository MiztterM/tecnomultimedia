//Franco Lautaro - Comisión 2
//https://www.youtube.com/watch?v=1-512hOB5_E&feature=youtu.be

int estado = 0;
int PosX = 300; 
int PosY = 700; 
int tam = 20;
int px = 0;
int py = 700;
int vely = 10;
int velx = 1;
int PY[]= new int [5]; 
PFont fuente;
PImage inicio;
PImage jugar;
PImage ganar;
PImage perder;

void texto20(){
  fill(255);
  textSize(20);
}

void setup(){
  size(600,750);
  textAlign (CENTER, CENTER); 
  fuente = loadFont("FranklinGothic-DemiCond-48.vlw");
  textFont(fuente, 48);
  inicio = loadImage("inicio.png");
  jugar = loadImage("jugar.png");
  ganar = loadImage("ganar.png");
  perder = loadImage("perder.png");
}

void draw(){
  //println(mouseX,mouseY);
  background(jugar);
  
PY [0]= 100;
PY [1]= 200;
PY [2]= 300;
PY [3]= 400;
PY [4]= 500;

  
  if (estado == 0){
    inicio();}
   
 if (estado == 1){
    jugar();
      
   if (PosY == 55){
  estado = 2; }   
   if (PosY == PY[0] && PosX== px){
  estado = 3; }
   if (PosY == PY[1] && PosX== px){
  estado = 3; }
   if (PosY == PY[2] && PosX== px){
  estado = 3; }
   if (PosY == PY[3] && PosX== px){
  estado = 3; }
   if (PosY == PY[4] && PosX== px){
  estado = 3; }
 }
 if (estado == 2){
  ganar (); }
  
 if (estado == 3){
  perder (); }

 if (estado == 4) {
  instrucciones(); }
  }


void inicio () {
 background(inicio);
 textSize(40);
  text ("JUGAR", width/2, height/2 ); 
  text ("INSTRUCCIONES", width/2 , height/2 + 100 ); 
 fill(255);
 textSize(60);
  text ("Lluvia de Asteroides", width/2, height/2 - 200); 
}   

void ganar (){
 background (ganar);
 textSize (80);
 fill (255);
  text("GANASTE", width/2, height/2 - 100);
 texto20();
  text("Pulsá (m) para ir al menú\nPulsá (r) para reiniciar", width/2, height/2);
}

void perder (){
 background (perder);
 textSize (100);
 fill (255);
  text("PERDISTE", width/2, height/2-100); 
 textSize (20);
  text("presiona (r) \npara volver a jugar", width/2, height/2);
}


void instrucciones (){
 noStroke();
 fill (255,150);
 rect (70, 70, 460, 570, 20);
   texto20();
  text ("INSTRUCCIONES", width/2, height/2 - 250 ); 
 textSize (30);
  text ("Objetivo: llegá a la meta\n sin que te toquen los asteroides", width/2, height/2 - 100); 
 textSize (25);
 fill (0);
  text ("Presiona la (D) para ir hacia la derecha \nPresiona la (A) para ir hacia la izquierda \nPresiona la (W) para ir hacia arriba \nPresiona la (S) para ir hacia abajo \n\n\n\n\n\nPara ir al menu presiona (m)", width/2, height/2 + 100 ); 
}

void mousePressed (){
  if (mouseX > 243 && mouseX < 351 && mouseY > 360 && mouseY<389 && estado == 0){
  PosX = 300;
  PosY = 700;
 estado = 1;
}
  else if (mouseX > 170 && mouseX < 425 && mouseY > 459 && mouseY<492 && estado == 0){
 estado = 4;}
}

void keyPressed () {

  if (key == 'm') {
 estado = 0; }
  if (key == 'r'){
 estado = 1;
  PosX = 300;
  PosY = 700;}
  if (key == 'i') {
 estado = 4;}
  
  if (key == 'w') {
 PosY -= 5;}
  if (key == 's') {
 PosY += 5;}
  if (key == 'a') {
 PosX -= 5;}
  if (key == 'd') {
 PosX += 5;}  
}

void jugar (){
smooth();
background(jugar);
noStroke();
fill (255);
rect (0, 20, 650, 35);

float limiteX= constrain (PosX, 0, 580);
float limiteY = constrain (PosY, 0, 700);
float distancia = dist (PosX, PosY, px, PY [0]);
float distancia1 = dist (PosX, PosY, px, PY [1]);
float distancia2 = dist (PosX, PosY, px, PY [2]);
float distancia3 = dist (PosX, PosY, px, PY [3]);
float distancia4 = dist (PosX, PosY, px, PY [4]);

if (distancia <= 20 || distancia1 <= 20  || distancia2 <= 20  || distancia3 <= 20 || distancia4 <=20 ){
 estado = 3; }

rect (limiteX, limiteY, tam, tam,3);
px = px + vely;

for (int i = 0; i < 5; i+= 1){
fill (50);
ellipse(px, PY [i], tam,tam);}

if (px == 0 || px == 580) {
vely*=-1;} 
}
