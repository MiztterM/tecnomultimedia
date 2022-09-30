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
