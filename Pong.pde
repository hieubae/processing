void setup() {
  size(500, 500);
}

int ballX = 250;
void draw() {
  background(0, 0, 0);
  ellipse(ballX,250, 50, 50);
  fill(255,255,255);
  stroke(0,0,0);
 ballX = ballX - 5;
 ballX = ballX + 5;
}
