/*

Nombre: Franco, Lautaro Gastón
Legajo: 91398/0
Comisión 2
Link del video: https://www.youtube.com/watch?v=crOvJT_Bbeg
*/


float tamanio;
void setup (){
noCursor();
size (800,650);
background (0);
tamanio= 13;
}

void draw(){
  
background(255);
circulos();
lineasdiagonales();
//lineas();
ellipse(mouseX,mouseY,3,3);

}

void circulos(){
for (int y = 5; y < height; y += 30){
  for (int x = 5; x  <width;x += 30) {
    if (random(300) <280){
      noStroke();
      fill(random(85),0,0,120);
    ellipse(x,y,10,60);
   }
  }
 }
}


void lineasdiagonales(){
  
  for (int i = -800; i < width*2; i=i+25) {
strokeWeight(tamanio);
stroke(255);
line(i,0,0,i);
line(i,mouseY,mouseX,i);
stroke(random(125),0,random(125),160);
line(mouseX,i,i,mouseY);
stroke(random(125),0,random(125),160);
line(mouseX/2,i,i,mouseY/2);

}}

void mousePressed () {
 tamanio ++; 
}

void keyPressed () {
  if (key =='r'){
tamanio = 13;
}
}
