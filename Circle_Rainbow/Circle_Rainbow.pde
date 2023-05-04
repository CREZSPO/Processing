float red = 0.0;
float green = 0.0;
float blue = 0.0;

float circleSize = 0.0;

void setup() {
  size(1980, 1080);
  background(255);
}

void draw() {
  stroke(0);
  fill(
    150 + sin(red) * 100,
    100 + sin(green) * 125,
    50 + sin(blue) * 200
  );
  
  float currentCircleSize = 75 + sin(circleSize) * 50;
  ellipse(mouseX, mouseY, currentCircleSize, currentCircleSize);
  
  red = red + 0.5;
  green = green + 0.2;
  blue = blue + 0.1;
  
  circleSize += 0.05;
}
