// Draw a line only when a mouse button is pressed

void setup() {
  size(1920, 1080);
}

void draw() {
  if (mousePressed == true) {
    line(mouseX, mouseY, pmouseX, pmouseY);
  }
}
