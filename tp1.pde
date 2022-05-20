/* Estos créditos están basados en "GRIS", un juego independiente de una desarrolladora española.
Los datos que salen en los créditos son los mismos que en el juego original
*/

PImage personaje;
PImage personaje2;
PImage primerfondo;
PImage estatuaprimer;
PImage montanias;
PImage luna;
PFont font;
PFont font2;
float velY ;
float posY ;
float cuenta, tono;

//estatua de la derecha q se mueve a la izquierda
float x = 960.0;
float y = 0.0;
float targetX = 630.0;
float targetY = 0.0;
float velocidad = 0.03;

//montañas desde abajo
float x2 = 0.0;
float y2 = 50.0;
float targetX2 = 0.0;
float targetY2 = -8;

//personaje
float x3= -20050;
float y3= 0;
float targetX3 = 0;
float targetY3 = 0;

//personaje 2
float x4= 30050;
float y4= 0;
float targetX4 = 0;
float targetY4 = 0;

void setup() 
{
frameRate(50);
size(960,540);

font = loadFont ("Haettenschweiler-255.vlw");
font2 = createFont ("LEMONMILK-Bold.otf",10);
primerfondo = loadImage ("cielo3.png");
estatuaprimer = loadImage ("TRANSICIÓN ESTATUA3.png");
montanias = loadImage ("MONTAÑAS3.png");
personaje = loadImage ("personaje.png");
personaje2 = loadImage ("personaje2.png");
tono = 0.9;
cuenta = 7;
velY += 2.5;
posY= 1200;
}

void draw() 
{
   background(primerfondo);
   
   float p = dist(x3,y3,targetX3, targetY3);
  if (p > 9.0||p== 9.0){
   x3 +=(targetX3-x3)* velocidad/2;
   y3 +=(targetY3-y3)* velocidad/2;}
   image(personaje, x3, y3);
   
   float o = dist(x4,y4,targetX4, targetY4);
  if (o > 9.0||o== 9.0){
   x4 +=(targetX4-x4)* velocidad/2;
   y4 +=(targetY4-y4)* velocidad/2;}
   image(personaje2, x4, y4);

  posY = posY - velY; 
  textFont(font2);
  fill(66, 20, 26);
  textAlign(CENTER,CENTER);
   textSize (12);
   text ("A GAME BY NOMADA STUDIO",width/1.8-200, posY);
   textSize (8);
     text ("-CREATIVE DIRECTOR-\n\n\nCONRAD ROSET", width/1.8-200, posY+400);
     text ("-PRODUCER-\n\n\nROGER MENDOZA", width/1.8-200, posY+600);
     text ("-TECHNICAL DIRECTOR-\n\n\nADRIAN CUEVAS",width/1.8-200, posY+800);
     text ("-LEAD ART-\n\n\nCONRAD ROSET",width/1.8-200, posY+1000);
     text ("-ART-\n\n\nARIADNA CERVELLÓ\n\nALBA FILELLA",width/1.8-200, posY+1200);
     text ("-ADDITIONAL ART-\n\n\nJON ANDER\n\nCARLOS PAMPLONA",width/1.8-200, posY+1400);
     text ("-GRAPHIC DESIGN-\n\n\nMARIADIAMANTES",width/1.8-200, posY+1600);
     text ("-LEAD ANIMATION-\n\n\nADRIAN MIGUEL",width/1.8-200, posY+1800);
     text ("-ANIMATION-\n\n\nJOEL ROSET\n\nRUBEN BERKELEY",width/1.8-200, posY+2000);
   textSize(13);
     text ("THANKS FOR PLAYING",width/1.8-200, posY+2300);
   textSize(6);
     text ("PULSA R PARA REINICIAR",width/1.8-200, posY+2700);

   textFont(font);
  
 float s = dist(x2,y2,targetX2, targetY2);
  if (s > 9.0||s== 9.0){
   x2 +=(targetX2-x2)* velocidad;
   y2 +=(targetY2-y2)* velocidad;}
  image(montanias,x2,y2);


 float d = dist(x,y,targetX, targetY);
  if (d >= 9.0||d  < 9.0){
   x +=(targetX-x)* velocidad;
   y +=(targetY-y)* velocidad;
  image(estatuaprimer,x,y);}
  
  if (tono>1300||tono==1300) {
cuenta -= 5;
}
tono += cuenta;
fill(180, 24, 33, tono/2);

textSize(200);
textAlign(CENTER);
text("GRIS", 330, 285);
}

void keyPressed() {
  if ( key == 'r' ){
  x = 960.0;
  y = 0.0;
  velocidad = 0.03;
  x2 = 0.0;
  y2 = 50.0;
  tono = 0.9;
  cuenta = 7;
  velY = 2.5;
  posY= 1200;
  x3= -20050;
  y3= 0;
  x4= 30050;
  y4= 0;
  }
}
