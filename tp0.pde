void setup()

{
size(1200,700);

//fondo ciudad
background(#051014);
noStroke();
  
//luna
fill(#FCFDAF);
ellipse(900,100,100,100);
fill(#051014);
ellipse(925,100,100,100);
  
//edificios
fill(#0C2731);
rect(0,250,200,600);
rect(200,400,160,600);
rect(600,200,100,600);
rect(620,100,60,600);
triangle(620,100,680,100,650,50);
rect(320,500,320,600);
rect(450,350,320,600);
rect(450,300,200,600);
rect(700,230,100,600);
rect(800,390,100,600);
rect(900,200,150,600);
rect(1050,260,100,600);
rect(1150,450,50,600);

//batman
fill(0);
  
triangle(0,600,300,450,600,600);//base de hombros y pecho
triangle(-300,700,300,450,900,700);
  
triangle(160,50,140,600,190,600);
triangle(160,50,200,150,160,150);//triangulo arriba de elipse izquierda
  
triangle(440,50,420,600,465,600);
triangle(440,50,400,150,440,150);//triangulo arriba elipse derecha
  
ellipse(300,150,270,100);
rect(160,150,276,600);
  
fill(230, 163, 96); //piel
rect(180,330,245,200);
  
fill(0);
triangle(180,330,420,330,300,360);//triangulos del cuello y nariz
triangle(180,460,300,600,180,600);
triangle(430,460,300,600,430,600);
  
fill(255);
triangle(190,250,205,280,270,283); //ojo izquierdo
triangle(410,250,395,280,330,283); //ojo derecho
  
fill(0);
ellipse(300,420,70,10);//boca
fill(230,163,96);
ellipse(300,422,70,9.5);
  
fill(176, 124, 72);
ellipse(300,430,20,4.5); //sombra debajo de la boca
fill(230,163,96);
ellipse(300,428,20,4.5);
 
}
