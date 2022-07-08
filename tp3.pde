/*
https://youtu.be/QKroRxX19As (el video es muy resumido, porque mi casa es un caos y tuve que grabar primero la pantalla y despúes el audio. Voy a intentar volver a grabarlo cuando no haya nadie en mi casa)
"El coso que salta" - tp3
Lautaro Franco - Comisión 2

*/


jugador j = new jugador();
rect[] p = new rect[3];
boolean fin=false;
boolean intro=true;
int score=0;
PFont fuente;
    
 void setup(){
 noCursor();
 size(500,800);
 noStroke();
 for(int i = 0;i<3;i++){
   p[i]=new rect(i);    
 fuente = loadFont("FranklinGothic-DemiCond-48.vlw");
 textFont(fuente, 48);
 }
}

 void draw(){
 background(255);
  if(fin){
      j.move();
      }
      j.drawjugador();
  if(fin){
      j.drag();
      }
      j.checkCollisions();
  for(int i = 0;i<3;i++){
      p[i].drawRect();
      p[i].checkPosition();
}
      noStroke();
      fill(90,10,10);
      textSize(30);
      if(fin){
      rect(20,20,38,50);
      fill(255);
      text(score,30,58);
      fill(90,10,10);
      }else{
      rect(0,0,500,800);
      //rect(50,200,400,550);
      fill(255);
      if(intro){
        textSize(48);
        text("EL COSO QUE SALTA",70,136);
        textSize(22);
        fill(255,130,130);
        text("Apreta cualquier tecla para empezar",90,240);
        fill(255);
        text("Llega a 10 puntos para ganar",130,340);
        
      }else{
      text("FIN DEL JUEGO",155,140);
      text("Puntaje: ",180,240);
      text(score,280,240);
      text("Apreta cualquier tecla para reiniciar",50,440);
      }
      }
             if ( score==10 || score>=10) {
    background( 200, 200, 0 );
    text( "GANASTE", 200, 300);  
    textSize(18);
    text("PULSA CUALQUIER TECLA PARA REINICIAR", 115,400);
  }
    }
    class jugador{
      float xPos,yPos,ySpeed;
    jugador(){
    xPos = 250;
    yPos = 400;
    }
    void drawjugador(){
      stroke(0);
      fill(0);
      ellipse(xPos,yPos,20,20);
      strokeWeight(6);
    }
    
    void jump(){
     ySpeed=-10; 
    }
    void drag(){
     ySpeed+=0.4; 
    }
    void move(){
     yPos+=ySpeed; 
     for(int i = 0;i<3;i++){
      p[i].xPos-=3;
     }
    }
    void checkCollisions(){
     if(yPos>800){
      fin=false;
     }
    for(int i = 0;i<3;i++){
    if((xPos<p[i].xPos+10&&xPos>p[i].xPos-10)&&(yPos<p[i].opening-100||yPos>p[i].opening+100)){
     fin=false; 
     }
    }
   } 
  }
    class rect{
      float xPos, opening;
      boolean cashed = false;
     rect(int i){
      xPos = 100+(i*200);
      opening = random(600)+100;
     }
     void drawRect(){

       line(xPos,0,xPos,opening-100);

       line(xPos,opening+100,xPos,800);

}
     void checkPosition(){
      if(xPos<0){
       xPos+=(200*3);
       opening = random(600)+100;
       cashed=false;
      } 
      if(xPos<250&&cashed==false){
       cashed=true;
       score++; 
      }
     }

    }
    void reset(){
     fin=true;
     score=0;
     j.yPos=400;
     for(int i = 0;i<3;i++){
      p[i].xPos+=550;
      p[i].cashed = false;
     }
    }
    
    void mousePressed(){
     j.jump();
     intro=false;
     if(fin==false){
       reset();
     }
    }
    
    void keyPressed(){
     j.jump(); 
     intro=false;
     if(fin==false){
       reset();
     }
    }
