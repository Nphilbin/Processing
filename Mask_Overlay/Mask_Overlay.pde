


int circleSize = 0;
int circleX = 0;
int circleY = 100;

void setup() {
  size (500,500);
}

void draw() {
  background (255);
  stroke (0);
  fill (175);
  ellipse (mouseX,mouseY,circleSize,circleSize);
  
circleSize ++;
  ellipse (width/2,height/2,circleSize,circleSize);

}


