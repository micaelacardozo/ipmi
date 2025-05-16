int segundos;
//presentación imagenes 
PImage lago; 
PImage amor;
PImage fondo;
PImage darcy;
//tipografia
PFont t; 
String titulo;
String fuente;
String cast;
String fin;
int posX, posY;

float tono;
float transparencia;

//VARABLES PARA BOTON
int posiX,posiY,anchoBot, altoBot, tamFigura;



void setup() {
  size(640, 480);
  
  //imagenes
  lago = loadImage("peli1.jpg");
  amor = loadImage("peli2.jpg");
  fondo = loadImage("peli3.jpg");
  darcy = loadImage ("peli4.jpg");
  //tipografía
  t = loadFont("cursiva.vlw"); 
  textFont(t, 80);
  titulo = "Orgullo y prejuicio"; 
  fuente = "Basada en la novela \n de \n Jane Austen";
  cast = "Actuada por \n Keira Knightley y \n Matthew Macfadyen";
  fin = "A veces, el orgullo y el prejuicio\nocultan al verdadero amor.\n\nPero el corazón... siempre encuentra el camino.";
 posX = 680; 
 posY = 200 ; 
 
 //botón
 posiY=400;
 posiX=580;
  anchoBot = 40;
  altoBot = 40;



  
  
}
void draw() {
  

    
  if (posX>150) {// HASTA DONDE QUIERO QUE LLEGUE
    posX = posX-2; //VELOCIDAD
    
  }
  //tiempo de una pantalla a otra.
  if (frameCount % 60==0) { // Hace que se cambie de pantalla
   segundos ++;
  }
  if (segundos<=4) {  //UNO
    image(lago,0,0,640,480);
     //animación
  text(titulo, posX, posY, 450, 200); 
  tono = map(posX, 680, 250, 0, 255);
  fill(222,182,38, tono); //cambio de color 
    
}


  //SEGUNDA PANTALLA
  
  
  
  else if (segundos >4 && segundos <= 9) { 
     image(amor,0,0,640,480);
     
      if (segundos == 5 && frameCount % 60 == 0) { 
      posX =-450; //donde arranca
      }
      
      posX = posX +3;  //velocidad
       
      transparencia = map (posX,200,250,255,0);
      fill (187,216,175,transparencia);
      
      text(fuente, posX, posY, 450, 200);
      
      
  
   //TERCERA PANTALLA  
     
  } 
  else if (segundos >9 && segundos <= 14) { //TRES
     image(fondo,0,0,640,480);  
     
   if (segundos == 10 && frameCount % 60 == 0) {
    
     posX = 100;
     posY = 540;
   }
    if (posY > 150){ 
      posY = posY -2; 
    }
   
      fill (195,227,185,255);
        text(cast,posX,posY,500,500);
       

     
  }
  
  //ULTIMA PANTALLA
  
  else  {
  image (darcy,0,0,640,480); //CUATRO
  
  if (segundos == 15 && frameCount % 60 == 0) { 
      posX =500; //donde arranca
      }
      
 if (posX > 350) {
    posX = posX - 1;
  } 
  fill (0);
  textSize (55);
  text (fin,posX,posY,450,500);
  
  //boton
    if (mouseX>posiX && mouseX<posiX+anchoBot && mouseY>posiY && mouseY<posiY+altoBot) {
    fill(116, 178, 104);
  } else {
    fill(71,108,63);
  }
   rect(posiX, posiY, anchoBot, altoBot);
  
  }
 
  

}


void mousePressed() {
  if (segundos>10) {
    if (mouseX>posiX && mouseX<posiX+anchoBot && mouseY>posiY && mouseY<posiY+altoBot) {
    segundos=0;
    posX=680;
    posY=200;
    textSize(80);
    }
    
  }
}
