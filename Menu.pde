class Menu{
  
  PImage menu = loadImage("fondo.jpg");
  Carta messi;
  Sobre sobre;

  Menu(){

  messi = new Carta();
  sobre = new Sobre();
    
  }
  
void actualizar(){
    
  sobre.actualizar();
  sobre.moverSobre();
    
  }

void dibujar(){
    
  background(menu);
  messi.dibujar();
  sobre.dibujar();

  }
}
