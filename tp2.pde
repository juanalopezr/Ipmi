PImage cuento1;
PImage cuento2;
PImage cuento3;

float opacidadTexto = 255;

PFont miFuente;

int estado;
int contador; //variable para contar fotogramas
float posX, posY;

String texto1, texto2, texto3;

void setup() {
  size (640,480);
  cuento1 = loadImage("cuento1.JPG");
  cuento2 = loadImage("cuento2.JPG");
  cuento3 = loadImage("cuento3.JPG");
  
  //Textos:
  texto1= "Autor: Joseph Jacobs\nCuento: Los tres cerditos";
  texto2= "Este cuento trata sobre tres cerditos que hacen sus casas, para tardar menos los dos primeros las hacen de madera y paja mientras que el mayor se esfuerza mas y la hace de ladrillos";
  texto3= "Cuando llega el lobo feroz, soplando tira la casa del primero y luego del segundo, que se refugian en la del tercero, como no puede soplar la tercer casa, trata de entrar por la chimenea, pero los cerditos prenden leña en el hogar y el lobo termina huyendo abrasado";
  
  miFuente= loadFont("comics.vlw"); // FUENTE ELEGIDA
  textFont(miFuente);
  textAlign(LEFT);
  
  estado = 1;
  contador = 0;
  posX = 10;
  posY= 320;
  }
  
  void draw() {
    background(200,0,0);
    
    //PANTALLA 1
     if ( estado == 1 ) { 
      image (cuento1, 0, 0, width, height);
      fill(255);
    textSize(30);
    text(texto1, posX, posY, 600, 200);
    
    contador++;
    if ( contador >= 100 ) {
      estado++;
      contador = 100;
    }
  } else if ( estado == 2 ) {
    
    //TRANSICION DE PANTALLA 1 A PANTALLA 2
    image(cuento2, 0, 0, width, height);
    fill(255);
    textSize(24);
    text(texto2, posX, posY, 600, 200);
    
    posX += 1;
    if (posX >= width) {
      estado = 5;
      contador = 0;
      posX = 20;
      posY = 320;
      }
    
    
   }  else if (estado == 5) {
     
     //PANTALLA 3
     image (cuento3,0,0,width, height);
     fill(255);
    textSize(25);
    text(texto3, posX, posY, 600, 200);
     
      posY -= 1;
    if (posY <= -textAscent())  { 
        estado++; 
        contador = 0; 
        posX = 20; 
       
    }
    
    else if ( estado == 6 ) {
    
//ULTIMA PANTALLA CON LA CREACION DEL BOTON DE REINICIAR

 background(255, 0, 0);
    if ( mouseX>225 && mouseX<225+150
      && mouseY >200 && mouseY<200+80 ) {
      fill(0, 255, 0);
    } else {
      fill(200);
    }
    rect( 225, 200, 150, 80); 
    fill (0);
    textSize (23.5);
    text("CLICK AQUI!",225,250);
    } 
    else {
      
    //un estado no previsto
    
  }
  
}
}

void mousePressed() {
  if ( estado==6) {
   
   //colision de mouseX,mouseY
   //con el rectangulo de 225x200 de
   //ancho 150 y alto 80
    if ( mouseX>225 && mouseX<225+150
      && mouseY >200 && mouseY<200+80 ) {
      estado = 1;
      posY = 320; 
    }
  } else {
    estado++;
    contador = 0;
    posX = 20;
  }
 
}
    
      
    
  
  
