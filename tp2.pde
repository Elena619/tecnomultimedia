// Molina Maria Elena leg:94803/4


PImage imagen;
int cant=10;


void setup(){
  size(800,400);
  imagen = loadImage("imagen.jpg");
   
}

void draw (){
 dibujarImagen();
  fill(15,16,255,2);
  
 for(int i=0; i<width; i+=10) {
 line(i,0,i,400);    
 /*for(int j=0; j<width; j+=10)
  rect(j,0,j,200);
  for(int j=0; j<width; j+=10)
  rect(j,200,j,400);*/
  
  image (imagen,0,0,400,400);

}
}
