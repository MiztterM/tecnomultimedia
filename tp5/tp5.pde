/*
 Nombre: Franco, Lautaro Gastón
 Legajo: 91398/0
 Comisión 2
 Link del video: https://youtu.be/ivLSzeeV-qc
*/

import processing.sound.*;          
SoundFile musica, efecto;
Menu inicio;

void setup() {
  size(550, 750);
  smooth(4);
  musica = new SoundFile(this, "musica.wav");        //Musica de fondo
  efecto = new SoundFile(this, "abrirsobre.wav");    //Sonido al abrir el sobre
  musica.play();  
  musica.loop();
  inicio= new Menu();
}

void draw() {
  inicio.estados();
  inicio.actualizar();
  inicio.keyPressed();
  inicio.reiniciar();
}
