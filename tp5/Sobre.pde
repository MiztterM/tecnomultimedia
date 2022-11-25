class Sobre {
  PImage sobrearriba, sobreabajo, textos2, textos3;
  float y = 0, y2 = 0, vel = 0.15, finaly = -300, finaly2 = 600;

  void dibujar() {
    textos2 = loadImage("textos2.png");  //PULSA R PARA REINICIAR Y C PARA CREDITOS
    textos3 = loadImage("textos3.png");  //PULSA A OARA ABRIR EL SOBRE
    sobrearriba = loadImage("sobrearriba.png");  //PARTE DEL SOBRE ARRIBA
    sobreabajo = loadImage("sobreabajo.png");  //PARTE DEL SOBRE ABAJO
    image(sobrearriba, 0, y);
    image(sobreabajo, 0, y2);
    if (y==0) {
      image(textos3, 0, 0);  //PULSA A PARA ABRIR EL SOBRE
    }
    if (y <finaly* vel-400) {
      image(textos2, 0, 0);  //PULSA R PARA REINICIAR Y C PARA CREDITOS
    }
  }

  void movimiento() {
    if (key == 'a' || key == 'A') {
      y +=finaly* vel;
      image(sobrearriba, 0, y);
    }
    if (key == 'a' || key == 'A') {
      y2 +=finaly2* vel;
      image(sobreabajo, 0, y2);
    }
    if (key=='a' && y2>=0) {
      efecto.play();  //AL APRETAR LA A, EL SONIDO EMPIEZA
    }
    if (keyPressed== false||keyPressed==true && y2>=100) {
      efecto.stop();  //SI y2 > 100, EL SONIDO NO PUEDE REPRODUCIRSE (PARA QUE SOLO SUENE CUANDO SE ABRE EL SOBRE)
    }
  }

  void reinicio() {
    if (key =='r' || key=='R') {
      y = 0; 
      y2 = 0; 
      vel = 0.15; 
      finaly = -300; 
      finaly2 = 600;
    }
  }
}
