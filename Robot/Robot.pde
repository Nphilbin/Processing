Robot robbie;
float scale = 0.5;

void setup() {
  size(800, 600);
  robbie = new Robot();
}

void draw() {
  background(255);
  println(width);

  robbie.draw();
}







