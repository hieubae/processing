void setup() {
  PImage backgroundImage;
  size(500, 500);
  backgroundImage = loadImage("image.jpg");
}
int ballY = 250;
int ballX = 250;
int xSpeed = 5;
int ySpeed = 5;
void draw() {
  image(backgroundImage, 0, 0);
  image(backgroundImage, 0, 0, 
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