int lowestX = 102;
int highestX = 191;
int lowestY = 120;
int highestY = 186;
int eyeX=150;
int eyeY=150;
void setup() {
size(500,300);

}


void draw() {
fill(255,255,255);
ellipse(350,150,150,111);
ellipse(150,150,150,111);


fill(0,0,0);
if (mousePressed) {
  println("X is:" + mouseX); //X:102 & 191 (left side) (right side) X: 309 & 390
  println("Y is:" + mouseY); //Y:112 & 117 (left side) (right side) Y: 113 & 114
}
if (mouseX > lowestX && mouseX < highestX) {
 eyeX = mouseX; 
}
if (mouseY > lowestY && mouseY < highestY) {
  eyeY = mouseY;
}
ellipse(eyeX,eyeY,25,25);
ellipse(eyeX + 200,eyeY,25,25);
}