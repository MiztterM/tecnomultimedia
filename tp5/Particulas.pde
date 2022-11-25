class Particulas {
  float x, y, diametro, vely;

  Particulas(float tempD) {
    x= random(0, 600);
    y = -100;
    diametro = tempD;
    vely = random(80, 260);  //LAS PARTICULAS SE VAN Y APARECE TEXTO2
  }

  void mover() {
    y+=vely;  //LAS PARTICULAS BAJAN
    x= x+random(-2);
  }

  void dibujar() {
    noStroke();
    fill(255, 102, 76, random(200));
    ellipse(x, y, diametro, diametro);
  }

  void reiniciar() {
    if (key =='r' || key=='R') {
      x= random(0, 700);
      y = -100;
      vely = random(90, 270);
    }
  }
}
