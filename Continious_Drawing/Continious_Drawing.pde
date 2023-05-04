// Draw from the previous mouse location to the current
// mouse location to create a continuous line
void setup() {
size(1920, 1080);
}
void draw() {
line(mouseX, mouseY, pmouseX, pmouseY);
}
