class BluePlanet{
 float xPos;
 float yPos;
 float speed;
 int state;
 
 BluePlanet(float xPos, float yPos){
   this.xPos = xPos;
   this.yPos = yPos;
   speed = 4;
   state= 0;
   this.state = state;
 }
 
 void display(){
   
   if(state ==0){
  fill(31, 50, 204);
  ellipse(xPos, yPos, 55,55); 
  
  noStroke();
  fill(35, 216, 200, 85);
  ellipse(xPos, yPos, 75, 75);
  
  xPos = xPos -speed; //to make it move
  
  if(xPos < -25){  //if the planet goes off the screen bring it back, loop
    xPos = random(650, 1000); //vary the xPos
    speed = speed +0.05; //increase speed per loop
    yPos = yPos + random(100,400); //vary yPos per loop
    
    if(yPos > 700){ //if yPos goes off screen then restart at 0
     yPos = 0; 
      }
    }
   }
  }
  
  void hit(){ //when ship hits planet
    state = 1;
  }
  
  
}