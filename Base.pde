/*
Nombre: Franco, Lautaro Gastón
Legajo: 91398/0
Comisión 2
Link del video: https://youtu.be/rTmqD7O-x5U
*/

Menu fondo;

void setup (){
  size(800,600); 
  fondo = new Menu();
  
}

void draw (){
  fondo.dibujar();
  fondo.actualizar();
  //println(mouseX,mouseY);
}
