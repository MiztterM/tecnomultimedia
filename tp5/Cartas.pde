class Cartas {
  int maxCartas = 7, cartas = 0;
  PImage [] imagenes = new PImage[maxCartas];

  void dibujar() {
    inicio.efecto();  //LAS PARTICULAS SALEN DETRAS DE LAS CARTAS
    for (int i=0; i<imagenes.length; i++) {
      imagenes[i]= loadImage("prueba_"+i+".png"); //TODAS LAS CARTAS
    }
  }

  void actualizar() {
    image(imagenes[cartas], 0, 0);
  }

  void clickear() {
    if (keyPressed == true) {
      cartas = int(random(imagenes.length));  //Las cartas cambian al presionar cualquier tecla
    }
  }
}
