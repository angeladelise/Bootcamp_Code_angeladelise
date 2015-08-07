float r, g, b;
float radius;
float x, y;
float speed;
float size;

boolean circle, circle2;
boolean wave, wave2;

void setup(){
  size(400, 400);
  x = width/2;
  y = height/2;
  radius = 20;
  speed = 0.05;
  size = width/4;
  background(200,200,200);
//  size = 0;
}

void draw(){
//  background(200, 200, 200);
  //fill(0);
  //rect(0,0,400,400);
  noStroke();
  r = random(255);
  g = random(100);
  b = random(150);
  fill(r,g,b);
//  int time = millis();
//  x = width/2 + sin( time * speed) * size;
//  y = height/2 + cos(time * speed) * size;
if (keyPressed){
 if (key == 'c')
{
 circle =true;
 wave = false;
 wave2= true;
} 

if (key == 'w'){
 wave = true; 
 wave2=false;
 circle = false;
}

if (key == 'd')
{
  wave2=false;
  circle2=true;
 circle =false;
 wave = false;
} 

if (key == 'h'){
  wave2 = true;
 wave = true; 
 circle = false;
}


if(key == 'r'){
  fill(200,200,200);
 rect(0,0,400,400); 
  
}
//  

  if(wave == true){
  x = frameCount % width/2;
  y = height/4 + sin(frameCount * speed) * size;
  }
    
  if (circle == true){
    x = width/4 + sin(frameCount * speed) * size;
    y = height/3 + cos(frameCount * speed) * size;
  }
    if (circle2 == true){
    x = width/1.5 + sin(frameCount * speed) * size;
    y = height/6 + cos(frameCount * speed) * size;
  }
  
    if(wave2 == true){
  x = frameCount % width/2+50;
  y = height/2 + sin(frameCount * speed) * size;
  }
    
//  size += 1;
  radius = abs(sin(frameCount * speed)) * size;
  ellipse(x, y, 10, 10);
  
  
  //wave
     x = width/2 + sin(frameCount * speed) * size;
    y = height/2 + cos(frameCount * speed) * size;
    
   
}



 text("Press w, c, d or g to draw! Press r to reset", 20, 350);
}
