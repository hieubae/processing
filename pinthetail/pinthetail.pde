boolean gameOver = false;
PImage donkey;     //at the top of the sketch
PImage tail;     //at the top of the sketch
int tailX;
int tailY;

void setup() {
  size(600,500);
  donkey = loadImage("donkey.jpg");     //in setup method
  donkey.resize(width,height);
background(donkey);     //in setup method
tail = loadImage("donkey-tail.png");     //in setup method
tail.resize(100, 100);     //in setup method 
}

void draw() {

 if (mouseX >0&& mouseX < 25 && mouseY > 0 && mouseY < 25) {
background(donkey);
 }
 else {
  background(200,200,200); 
 }
 rect(0,0,25,25);
  if (mousePressed) {
      image(tail, mouseX, mouseY);     //in draw method
 gameOver =true;
//Show Donkey + Tail
   tailX=mouseX;
   tailY=mouseY;
}
}