//for character
float rectY;
float rectX;

//for bad circles
float xPos;
float yPos;

//array for bad circle y positions for first round
float [] circleY = {50, 210, 370, 530}; 
float [] circleYTwo = {100, 260, 430, 580}; 


float xPosTwo;
float yPosTwo;

//to repeat bad rectangles
boolean loop;
boolean justLost;
//lose screen
boolean lose;
boolean justHit;

float speed;

float d; //distance float for first planets
float dTwo; //distance float for second planets

float line;

int lives; //how many lives the user has
int count;

boolean hit; //when it is the ship is hit once
boolean dead; //when you run out of lives
boolean restart;

int frames;

int state; //state of the game I am in

boolean reset;

PFont header;

int mil;
int timer; 
int endTime; //when you lose the time stays on the screen
float actualTime; //millis counter
float resetTime;
//int startTime =0;

int redDuration;
int redTimer;

void setup() {
  size(600, 600);
  rectY= 400;
  rectX = 100;

  xPos = 620;
  xPosTwo= 1000;

  loop = true;
  lose = false;
  speed = .8; //initial speed
  lives= 5; //5 lives to begin with

  state =0;
  
  reset = true;
  
  timer = 0; // initally clock is set to zero
  mil = 0;
 
}


void draw() {

  if (state == 0 && reset ==true) {
    background(0);
    //mil = millis();
    //timer = int(mil/1000);
    
    actualTime = int(millis()/1000);
    timer = int(actualTime-resetTime);


    //stars

    fill(255);
    ellipse(random(600), random(600), 7, 7);
    fill(255);
    ellipse(random(600), random(600), 7, 7);
    fill(255);
    ellipse(random(600), random(600), 7, 7);
    fill(255);
    ellipse(random(600), random(600), 7, 7);
    fill(255);
    ellipse(random(600), random(600), 7, 7);
    fill(255);
    ellipse(random(600), random(600), 7, 7);


    //character
    //space ship
    //red circle
    fill(255, 0, 0);
    stroke(5);
    ellipse(rectX, rectY, 60, 60);
    //white circle
    fill(255);
    ellipse(rectX, rectY, 40, 40);
    //gray circle
    fill(100);
    ellipse(rectX, rectY+25, 120, 45);


    if (loop == true) {
      //y post vertical space between planets


      for (int i = 0; i < 4; i++) {
        xPos = xPos - speed;
        //bad planet
        fill(255, 0, 0);
        ellipse(xPos, circleY[i], 30, 30);
        //bad planet glow
        noStroke();
        fill(200, 130, 100, 85);
        ellipse(xPos, circleY[i], 45, 45);

        if (xPos <=-30) {
          loop = true;
          xPos = 620;
          speed = speed+.05;
        }

        //distance between you and bad rectangle
        int d = int(dist(rectX, rectY, xPos, circleY[i]));
        if (d <= 50) {
         // fill(255, 0, 0);
          //rect(0, 0, 400, 400);
          
          state = 1;
          
     //     endTime = actualTime-resetTime;
          
          //timer stops
          

          frames ++;
          justHit = true;
        }
      }


      for (int i = 0; i < 4; i++) {
        xPosTwo = xPosTwo - speed;
        //bad planet
        fill(255, 0, 0);
        ellipse(xPosTwo, circleYTwo[i], 30, 30);
        //bad planet glow
        noStroke();
        fill(200, 130, 100, 85);
        ellipse(xPosTwo, circleYTwo[i], 45, 45);

        if (xPosTwo <=-30) {
          loop = true;
          xPosTwo = 1000;
          speed = speed+.05;
        }

        //distance between you and bad rectangle
        int d = int(dist(rectX, rectY, xPosTwo, circleYTwo[i]));
        if (d <= 50) {
        //  fill(200, 0, 100);
        //  rect(0, 0, 400, 400);

          state = 1;
          
       //   endTime = actualTime-resetTime;

          frames ++;
          justHit = true;
        }
      }
    }
 //   println(lives);
  //  println(frameCount/30); //seconds timer

 //   println(frames);
  }
  
  else{
    reset = false;
    background(255, 0, 0);
     textSize(60);
     fill(0, 0, 0);
     text("Sorry you Lose!", 30, 250);
     textSize(40);
     text("Click to Restart", 100, 350);

  }
 
 // println(state);

  fill(255);
  header = loadFont("AppleColorEmoji-48.vlw");
  textSize(15);
  textFont(header);
  text("Space Battle", 12, 60);
  
  textSize(35);
  text("Timer:" + timer, 400, 60);
  
  //if you lose print the end time
  if (state ==1){
      text("Timer:" + endTime, 400, 60);
       endTime = int(actualTime-resetTime);
       
      redTimer = (1/30) * redTimer;
      
  }
  
  redDuration = redDuration + redTimer;
  
  //println("timer" + timer);
  println("actual" + actualTime);
 // println("reset" +resetTime);
}



void keyPressed() {

  if (key ==CODED) {
    if (keyCode ==UP) {
      rectY = rectY - 15;
    } else if (keyCode ==DOWN) {
      rectY = rectY +15;
    }
    
    else if(keyCode == UP && state ==1){
     state =0; 
     reset = true;
    }
    
    else if(keyCode == DOWN && state ==1){
     state =0; 
     reset = true;
    }
  }
}


void mouseClicked() {
 state= 0;
 //timer = timer - timer;
 reset = true;
 setup();
 endTime = int(actualTime-resetTime);
resetTime = actualTime + redDuration;
//actualTime =0;
 

}

void mouseReleased(){
  resetTime = actualTime-2;
}