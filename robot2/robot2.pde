ArrayList<Robot> robots;
int numberOfRobots = 3;

void setup() {
  size(400, 300);
  robots = new ArrayList<Robot>();
  float scale = 0.6;
  for (int i = 0; i < numberOfRobots; ++i) {
    robots.add(new Robot(color(120), scale));
    scale *= 0.8;
  }
}

void draw() { 
  background(300);




  robots.get(0).moveTo(mouseX, mouseY);
  robots.get(0).draw();

  for (int i = 1; i < numberOfRobots; ++i) {
    Robot previousRobot = robots.get(i-1);
    Robot currentRobot = robots.get(i-1);
    robots.get(i).easeTowards(previousRobot.x, previousRobot.y, 0.05);
    robots.get(i).draw();
  }
}

