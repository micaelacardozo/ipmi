PImage miImagen;
void setup(){
size (800, 400);
miImagen=loadImage("minion.jpg"); 
}
void draw(){
  println ("x:" + mouseX + "y:" + mouseY);
background (255);
image (miImagen, 0, 0, 400, 400);
//separación
fill (0);
stroke (0);
line (400,0,400,400);
//cuerpo amarillo
//brazo sombreado
fill  (240,211,63);
stroke (240,211,63);
circle (536,240, 200);
rect (437,259,15,80);
//resto del cuerpo
fill (255,234,0);
stroke (255,234,0);
strokeWeight (4);
circle (560,125,220);
circle (560,230,230);
rect (450, 100, 22, 150);
rect (645, 100, 22, 150);
quad (670,210,660,230,710,265,710,250);
quad (722,230,710,250,712,265,733,237);
//manos
//izquiera
fill (45);
noStroke ();
ellipse (730,227,26,20); 
triangle (717,223,738,197,742,235);
ellipse (738,200,35,35);
ellipse (723,185,22,20);
ellipse (760,186,20,20);
ellipse (746,169,20,25);
rect (737,175,15,20);
triangle (753,203,753,193,762,194);
triangle (723,185,737,180,744,184);
//derecha
triangle (432,310,445,343,457,307);
ellipse (447,337,30,30);
ellipse (445,350,20,20);
ellipse (465,341,20,20);
ellipse (460,356,20,20);
ellipse (450,352,20,10);

//boca
fill (45);
noStroke ();
circle (550,208,50);
fill (255,234,0);
rect (500,190,100,50);


// elastico de gafas
fill (45);
quad (668,90,658,80,658,115,672,115);
fill (117);
noStroke ();
rect (650,80,8,40);
rect (443,82,8,40);


//gafas
fill (210);
stroke (255);
circle (500,100,110); 
circle (595,100,110);

//sombra de ojos
fill (150);
stroke (20);
strokeWeight (5);
circle (500,100,80);
circle (595,100,80);
// parte blanca de ojos
fill (255);
noStroke ();
circle (505,105,75);
circle (600,105,75);
//iris
fill (89,106,25);
stroke (0);
strokeWeight (1);
circle (510,103,32);
fill (100,74,23);
circle (590,103,32);
//pupila
fill (0);
circle (512,102,12);
circle (590,101,12);
//brillo
fill (255);
stroke (255);
circle (505,95,8);
circle (583,95,8);
//ropa
fill (31,90,152);
stroke (31,90,152);
arc (557,275,225,140,0,PI);
noStroke ();
rect (469,218,160,80);
stroke (0);
line (515,240, 586, 240);
arc (550,242,68,95,0,PI); 
quad (495,225,440,187,440,210,490,247);
quad (675,188,608,225,612,245,675,215);

//piernas
noStroke ();
rect (562,330,40,25);
rect (502,330,40,25);
//zapatos
fill (45);
rect (565,355,32,18);
ellipse (600,370,30,20);
rect (505,355,32,18);
ellipse (510,370,30,20);
triangle (515, 380, 520, 355, 537,370);
triangle (565,373 , 570,355, 600, 380);
//botones
fill (30);
ellipse (483,230,10,15);
ellipse (620,231,10,15);


}
