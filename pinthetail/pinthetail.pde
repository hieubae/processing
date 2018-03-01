boolean gameOver = false;
PImage donkey;     //at the top of the sketch
PImage tail;     //at the top of the sketch
int tailX;
int tailY;
import ddf.minim.*;     //at the very top of your sketch
AudioSample sound1;     //at the top of your sketch
void setup() {
  Minim minim = new Minim(this);     //in the setup method
sound1 = minim.loadSample("moo.wav");     //in setup
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
 if(!gameOver) {
  if (mousePressed) {
    if (mouseX >416 && mouseX < 469 && mouseY > 210 && mouseY < 260) {    
   sound1.trigger();     //where you want the sound to play
    }
    else {
    sound2.trigger();
    }


     // mouseX = 416 and 469
     // mouseY = 210 and 260
      image(tail, mouseX, mouseY);     //in draw method
 gameOver =true;
//Show Donkey + Tail
   tailX=mouseX; 
   tailY=mouseY;
}
}