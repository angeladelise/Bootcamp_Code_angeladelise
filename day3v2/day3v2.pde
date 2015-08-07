PImage bird;
PImage worm;
int x;
int y;
int location;
float r;
float g;
float b;
int yPos;
int xPos;
int opacity;

PFont font;


void setup(){
  size(800,500);
 
  bird = loadImage("bird.jpg");
  worm = loadImage("worm.png");
  font= loadFont("AvenirNextCondensed-UltraLight-48.vlw");
  textFont(font,50);
  yPos = 400;
  xPos = 600;
}


void draw(){
  loadPixels();
   background(0);
  location = y * bird.width +x;
  

  imageMode(CORNER);
  opacity = 100;
  image(bird,50,20);
  
   
   println(mouseX);
   println(mouseY);

  //word hello
  textFont(font,100);
  text("hello", xPos,yPos);
  
    if (mousePressed)
  {
    xPos = xPos -10;
   yPos = yPos-2; 
  }
  
  if (xPos<-150){
    textFont(font, 50);
   text("time to eat dinner!", 400,100); 
   
    if (mousePressed){
     image(worm, 180,180, 40, 40);
     
     text("nom", 500, 150);
     text("nom", 550, 200);
     text("nom", 600, 250);
    }
  
  }
  
  if(keyPressed){
   if(key == 's')
  {
   saveFrame();
  }
  }
}

