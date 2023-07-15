String[] textO = new String[12];
PImage[] imagen = new PImage[12];


int j;
int i=0;
int pantalla = 1;

void setup(){
  size(600,600);
  for(j=0; j<12; j++){
      imagen[j] = loadImage("imagen"+j+".png");
      
     
}  
 
  textO[0] = "                              CREDITOS \n                           Prgramador: Maria Molina \n                            Autor: MUMABLUE";
  textO[1] = ".                         EL HADA DEL INVIERNO";
  textO[2] = " Algo malo esta pasando con el otoño, los\n arboles empiezan  congelarse antes de tiempo,\n el invierno se esta acelerando ¿Quién es el\n causante de este fenómeno?";
  textO[3] = " Todos los animales están reunidos para\n hablar sobre este problema que afecta a todos, y\n solo queda que se decidan en que hacer,\n no tienen muchas opciones.";
  textO[4] = "La mayoría de los animales decidieron ignorar\n esta situación, como no estaban preparados \n para este invierno ocurrió lo peor,\n varios de los animales no soportaron\n el largo invierno. ";
  textO[5] = " Descubrimos que un hada del invierno era la\n responsable de este hecho, decidimos pedirle \nque por favor nos devuelva el otoño.";
  textO[6] = " ¿Por qué haría eso?, pienso que el otoño es\n una estación que no sirve para nada, por eso \nprefiero que puedan disfrutar durante mas\n  tiempo el bello invierno.";
  textO[7] = " Los animales no se rindieron y decidieron que\n encontrarían una salida a este problema, asi\n que la rata y el ciervo tomaron iniciativa\n para hablar con la hada.";
  textO[8] = " La rata decidió mostrarle al hada que todos los\n animales durante el otoño se preparan para \nel invierno, cada quien a su manera.Asi le\n muestra al hada la importancia del\n otoño, y todo depende de lo que decida\n  el hada ";
  textO[9] = " La hada pudo entender que el otoño es igual de \n importante que las otras estaciones, y que \n durante esta estación los animales se preparan\n para el invierno, por eso se  disculpa \n y decide devolverles el otoño.";
  textO[10] =" Por mas que le mostraron cuan importante es el \n otoño para los animales del bosque, la hada \n no pudo empatizar ni un poco y decide mantener \n su decisión, entonces todo el bosque cae \n victima de la magia de la hada villana.";
  textO[11] =" El ciervo habla con el hada, pero no le fue muy \n bien, pero aun asi la hada se compadece un \n poco y decide separar el bosque, donde una \n mitad sera para el otoño y la otra sera\n  para el invierno.";

}

    //parametro que retorna un valor
float disBoton(int xboton, int yboton){
 float r=0;
 r=dist(mouseX, mouseY, xboton, yboton);
   return r;
}

     //parametro que no retornan
void pant(int pos, int canBoton, String boton1, String boton2){
   fill(#0705AA);
   textSize(25);
   image(imagen[pos], 0, 0, 600, 600);

   text(textO[pos], 70, 70);
   if(canBoton == 1){
    
      fill(#368E14);
     rect(240,380,100,50); //1 boton
     fill(255,255,255);
     textSize(20);
     text(boton1,250,410);
    }else
   {
       fill(#368E14);
     rect(130,480,120,50); //2 botones
     rect(400,480,120,50);
     fill(255,255,255);
     textSize(20);
     text(boton1, 140,510);
     text(boton2, 420,510);
    }  
}  

void draw(){
     if(pantalla == 1){
     pant(1,2,"Créditos","Iniciar");   //primera pantalla
    }
     if(pantalla == 0){
     pant(0,1,"Iniciar","");          //segunda pantalla creditos
    }
     if(pantalla == 2){
     pant(2,1,"Siguiente","");        //tercera pantalla 
    }
     if(pantalla == 3){
     pant(3,2,"Solucionarlo","Ignorarlo");    //cuarta pantalla 
    }
     if(pantalla == 4){
     pant(4,1,"Reiniciar","");         // quinta pantalla, final malo
    }
     if(pantalla == 5){
     pant(5,1,"Siguiente","");         //sexta pantalla 
    }
     if(pantalla == 6){
     pant(6,1,"Siguiente","");         //septima pantalla  centrar el area clickeable
    }
     if(pantalla == 7){
     pant(7,2,"El ciervo ","La rata"); //octava pantalla
    }
     if(pantalla == 8){
     pant(8,2,"Opción 1","Opción 2");    //novena pantalla 
    }
     if(pantalla == 9){
     pant(9,1,"Iniciar","");      //decima pantalla, falta que se reinicie
    }
     if(pantalla == 10){
     pant(10,1,"Reiniciar","");    // once pantalla, op 2 final malo, fslta que reinicie
    }
     if(pantalla == 11){
     pant(11,1,"Reiniciar","");                 //habla el ciervo final malo falta reiniciar
    }
   
 
}

void mousePressed(){
 
 if(pantalla== 1){                      //pantalla inicio 1
    if(disBoton(180,500) < 50)
     pantalla = 0;
     else if(disBoton(480,500) < 50)
     pantalla = 2;
     
 }else if(pantalla == 0){                    //pantalla creditos 2
    if(disBoton(280,400) < 50)
    pantalla = 1;  
    
 } else if(pantalla == 2){                //pantalla 3
    if(disBoton(280,400) < 50)
    pantalla = 3; 
    
 }else if(pantalla == 3){               //pantalla 4 
    if(disBoton(180,500) < 50)
    pantalla = 5;
    else if(disBoton(480,500) < 50)
    pantalla = 4;
    
 } else if(pantalla == 4){              //pantalla 5 final 1
    if(disBoton(280,400) < 50)
    pantalla = 1; 
    
 } else if(pantalla == 5){             //pantalla 6
    if(disBoton(280,400) < 50)
    pantalla = 6;
    
 }else if(pantalla == 6){             //pantalla 7
    if(disBoton(280,400) < 50)
    pantalla = 7;
   
    
 }else  if(pantalla == 7){             //pantalla 8 ciervo y rata
    if(disBoton(180,500) < 50)
    pantalla = 11;
    else if(disBoton(480,500) < 50)
    pantalla = 8;
    
 } else if(pantalla == 11){              //pantalla 12 final 2 ciervo
    if(disBoton(280,400) < 50)
    pantalla = 1; 
    
 } else if(pantalla == 8){               //pantalla 9  rata2opciones
    if(disBoton(180,500) < 50)
    pantalla = 9;
     else if(disBoton(480,500) < 50)
   pantalla = 10;
 } else if(pantalla == 9){              //pantalla 10 final 3 final bueno opcion 1
    if(disBoton(280,400) < 50)
    pantalla = 1; 
 } else if(pantalla == 10){              //pantalla 1 final 4 final malo opcion 2
    if(disBoton(280,400) < 50)
   pantalla = 1; 
}
 

}
