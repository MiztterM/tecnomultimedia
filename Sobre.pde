class Sobre{
  
  PImage sobre = loadImage("sobre2.png");
  float x, y;
  boolean mover, abrir;
 
  Sobre(){
    
   x = 286;
   y = 116;
   
  }
  
void actualizar(){

    if( mousePressed ){
      mover = true;
    }else{
      mover = false;
    }

    if(mouseX > 0 && mouseX < 800 && mouseY > 0 && mouseY< 600)
     abrir = true;
    else
     abrir = false;
  }
  
void moverSobre(){
  
    if( mover && abrir ){
      x = mouseX-120;
      y = mouseY-150;
    }
  }
  
void dibujar(){
    
  image(sobre,x,y);

  }
}
