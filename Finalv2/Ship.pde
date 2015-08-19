class Ship {
  float rectX;
  float rectY;
  float dropSpeed;
  int state =0;
  int shipX;
  float shipY = 400;
  float posY; //current y position
  

  Ship() {
   
    
  }

  //Ship(int shipX) {
  //  this.shipX = shipX;
  //  this.dropSpeed =0;
  //  posY = shipY; //initally
  //}

  void display() {

    if (state ==0) {
     // fill(255, 0, 0);
     //red circle
       strokeWeight(9);
      stroke(255,0,0);
      noFill();
      ellipse(position.x, position.y, 60, 60);
      //white circle
      
    fill(255, 230);
      
      strokeWeight(1);
      stroke(255, 255, 255, 10);
     
      ellipse(position.x, position.y, 52, 52);
      //gray circle
      stroke(0, 100);
      strokeWeight(1);
      fill(100);
      ellipse(position.x, position.y+25, 120, 45);

    if (position.y > height-50){ //boundary
    position.y = height-50;
  }
  
  if(position.y<50){
    position.y = 50;
  }
    }
  }//end of display
  
}