void setup() {
  size(500, 500);
}
int ballY = 250;
int ballX = 250;
int xSpeed = 5;
int ySpeed = 5;
void draw() {
  background(0, 0, 0);
  ellipse(ballX,ballY, 50, 50);
  fill(255,255,255);
  stroke(0,0,0);
 ballX = ballX + xSpeed;
   
  if(ballX > width){
    xSpeed = -xSpeed;
}
  if(ballX < 0){
   xSpeed = -xSpeed; 
 }
 
 ballY = ballY + ySpeed;
 
  if(ballY > height){
    ySpeed = -ySpeed;
  }
  
  if(ballY < 0){
  ySpeed = -ySpeed;
  } 
  
}
