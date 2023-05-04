void setup() {
size(1920, 1080);
smooth();
noLoop();
}
void draw() {
for (int i = 0; i < 70; i++) { // Draw 70 X shapes
drawX(int(random(255)), int(random(30)),
int(random(width)), int(random(height)), 100);
}
}
void drawX(int gray, int weight, int x, int y, int size) {
stroke(gray);
strokeWeight(weight);
line(x, y, x+size, y+size);
line(x+size, y, x, y+size);
}
