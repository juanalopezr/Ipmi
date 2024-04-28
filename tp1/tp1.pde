PImage durazno;

void setup ()
{
  size (800,400);
  durazno=loadImage ("durazno.jpeg");
  
}
void draw ()
{
  background(255);
  fill (255,125,0);
  circle (600,200,200);
  fill (240,213,60);
 circle (600,200,180);
 fill (100,58,12);
 ellipse (600,200,45,90);
 fill (121,55,17);
 bezier (600,100,600,100,600,100,620,50);
 bezier (600,100,595,90,595,90,620,50);
 fill (60,152,32);
 bezier (600,100,650,60,650,60,730,75);
 bezier (600,100,650,105,650,105,730,75);
 image (durazno,0,0,400,400);
  
  }
