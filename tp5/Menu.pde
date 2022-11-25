class Menu {
  Particulas[] pelotas = new Particulas [110]; 
  PImage fifa, textosinicio, messiinicio, jugar, creditos;
  int estado;
  float vel = 0.1, x = -700, finalx = 0;
  Cartas jugadores; 
  Sobre animacion; 

  Menu() {
    jugadores = new Cartas();
    animacion = new Sobre();
    for (int i = 0; i < pelotas.length; i++) {
      pelotas[i] = new Particulas(random(20, 40));
    }
  }

  void estados() {
    if (estado == 0) {
      fifa();
    }
    if (estado == 1) {
      jugar();
    }
    if (estado == 2) {
      creditos();
    }
  }

  void actualizar() {
    jugadores.clickear();
  }

  void fifa() {
    fifa = loadImage("fifa.jpg");
    background(fifa);
    textosinicio = loadImage("textos.png");
    messiinicio = loadImage("messi.png");
    float d = dist(x, 0, finalx, 0);
    if (d >= 9.0||d < 9.0) {
      x +=(finalx-x)* vel;
      image(messiinicio, x, 0);
    }
    image(textosinicio, 0, 0);
  }

  void jugar() {
    jugar = loadImage("fondo.jpg");
    background(jugar);
    jugadores.dibujar();
    jugadores.actualizar();
    animacion.dibujar();
    animacion.movimiento();
  }

  void creditos() {
    creditos = loadImage("creditos.jpg");
    background(creditos);
  }

  void reiniciar() {
    if (key =='r' || key=='R') { 
      estado=0; 
      background(fifa);
      image(messiinicio, x, 0);
      image(textosinicio, 0, 0);
      animacion.reinicio();
      for (int i = 0; i < pelotas.length; i++) {
        pelotas[i].reiniciar();
      }
    }
  }

  void keyPressed() {
    if (estado ==0 &&  key == 's' || key =='S') {    //Abrir el sobre
      estado = 1;
    }
    if (estado ==1 &&  key == 'c' || key =='C') {    //Los créditos
      estado = 2;
    }
  }

  void efecto() {
    if (estado==1 && key =='a' || key == 'A') {
      for (int i = 0; i < pelotas.length; i++) {
        pelotas[i].mover(); 
        pelotas[i].dibujar();
      }
    }
  }
}
