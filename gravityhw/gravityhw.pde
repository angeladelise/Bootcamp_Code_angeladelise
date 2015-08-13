PVector velocity;
PVector position;
PVector gravity;

int score = 0;
String scoreText;

PVector obstaclePosition;
PVector obstacleVelocity;

PImage apple;
PImage tree;

boolean loop;
boolean end;
void setup(){
  size( 500, 400);
  velocity = new PVector (0, 0);
  position = new PVector ( width/2,0);
  gravity = new PVector (0, 0.5);
  obstaclePosition = new PVector(width+100, 0);
  obstacleVelocity = new PVector (-1, 0);
  
  apple = loadImage("apple1.png");
  tree = loadImage("tree.png");
  loop = true;
}

void draw(){
  background(255);
  position.add(velocity);
  velocity.add(gravity);
  
  image(tree, -50,-250, 600, 650);
  
  
  //if (position.y > height){
  //  position.y = height;
  //}
  
  fill(255,0,0);
  //ellipse(position.x, position.y - 25, 55, 50);
  
  if (loop == true){
  for(int i =0; i < 10; i++)
  {
     image(apple, i*100, position.y-25, 70, 50);
     
  }
   end = true;
  }
  

        if (position.y >= 350){
       position.y = 0; 
       end = true;
       setup();
        }
      if (end == true){
      loop = true;
      }
            
    
    
}