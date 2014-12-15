int numberOfFrames = 60;
void setup() {
  size(1680, 1080);
}

void colorToColor() {
  int i = 0;
  for (int pxl : pixels) {    
    float colorShade = (red(pxl) + green(pxl) + blue(pxl))/3;
    float r = (i * colorShade + (numberOfFrames - i)*red(pxl))/numberOfFrames;
    float g = (i * colorShade + (numberOfFrames - i)*green(pxl))/numberOfFrames;
    float b = (i * colorShade + (numberOfFrames - i)*blue(pxl))/numberOfFrames;
    pixels[i++] = color(colorShade);
  }
} 

void draw() {
  PImage img = loadImage("Sea-Turtle.jpg");
  image(img, 0, 0);
  loadPixels();
  int pixel = pixels[0];

  println("pixel="+pixel);
  println("red="+red(pixel)+" green="+green(pixel)+" blue+="+blue(pixel));
  colorToGray();
  updatePixels();
}

void colorToGray() {
  int i = 0;
  for (int pxl : pixels) {    
    float grayShade = (red(pxl) + green(pxl) + blue(pxl))/3;
    pixels[i++] = color(grayShade);
  }
} 

