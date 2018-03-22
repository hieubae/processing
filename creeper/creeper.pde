int lowestX = 280;
//int highestX =
int lowestY = 192;
//int highestY =
PImage creeper;     //at the top
void setup() {
  size(339, 225); //in setup method
  PImage minecraft = loadImage("Green.jpg");     //in setup method
  minecraft.resize(339, 225);     //in setup method
  background(minecraft);     //in setup method
  creeper=loadImage("creeper.png");     //in setup method
  creeper.resize(25, 25);     //in setup method
}
void draw() {
  image(creeper, 280, 192);     //in draw method
  if (mousePressed) {
    //println("X: " + mouseX + " Y: " + mouseY); 
    if (mouseX >0&& mouseX < 25 && mouseY > 0 && mouseY < 25) {
      fill(0, 255, 0);
    } else {
      if (isNear(mouseX, 285) && isNear(mouseY, 200)) {
       
                textSize(50);
             fill(252,215,0);
        text("Game Over", 25,100);
 fill(0, 255, 0);
        
 
      } else {
        fill(255, 0, 0);
          
      }
     
    }
    ellipse(mouseX, mouseY, 15, 15);
  }
}
boolean isNear(int a, int b) {
  if (abs(a - b) < 10)
    return true;
  else
    return false;
}