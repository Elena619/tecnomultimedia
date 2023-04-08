PImage miimage;

void setup () {
  size (800, 400);
  background (#95D8D8); //fondo color cielo
      miimage = loadImage ("miimage.png");
     image (miimage,0,0,400,400);
}

void draw () {
  fill (#BC8844);
       rect(400,250,400,150); //tierra
  
  fill (10,10,10,240); // gris oscuro
       rect (500,180,200,55); //parte debajo del tractor
  
      strokeWeight(0);
  fill (0,0,0, 150); // sombra del tractor
      ellipse (600,320,390,50);
      strokeWeight(1);
  
 fill (#030100); // negro
       triangle (460,220,530,220,495,280);
       triangle (670,180,770,180,720,270);
       
  fill (#1C1C1C); //gris oscuro
       ellipse (495,280,100,100); //rueda1
       ellipse (495,280,60,60);
       ellipse (495,280,20,20);
       ellipse (720,260,150,150); //rueda2
       ellipse (720,260,90,90);
       ellipse (720,260,30,30);
  
  fill (#B70909); //rojo
       rect (605,55,160,5); //techo de cabina
       rect (460,150,155,80); //motor 
       rect (460,150,75,80); //motor
  fill (0,0,0,200); // negro tranparencia
       rect (470,160,50,40);
      // rect (500,180,200,80);
  fill (0,0,0); //gris oscuro
       rect (610,60,10,180); //palo de cabina
       rect (605,60,160,15); //techo de cabina
       rect (710,75,10,90);
       rect (750,75,10,90);
       rect (615,45,5,15);
       rect (590,90,20,10); // faro del frente1
        quad(590,90,590,100,580,110,580,80); //faro del frente 2
       rect (430,200,30,10); //faro delantero1
       quad(430,210,450,210,460,230,420,230); //faro delantero2
  fill (#F7730C); //naranja
       rect (613,40,9,10); // luz
       
      
 fill (#030100); // negro
      quad(670,180,690,140,770,140,770,180);
      rect (620,180,60,15);
  strokeWeight(5); //grosor de linea
   stroke(#4D4C4C);
      line (645,195,645,260); // escalera
      line (620,195,620,260);
      line (620,220,645,220);
      line (620,240,645,240);
      line (620,260,645,260);
      stroke (0,0,0);
      line (620,160,640,140); // volante
      line (640,130,640,150);
      line (645,130,645,150);
      line (550,160,550,190);
      line (565,160,565,190);
      line (580,160,580,190);
      line (595,160,595,190);
      rect (540,200,60,7);
  strokeWeight (1);
  
}
