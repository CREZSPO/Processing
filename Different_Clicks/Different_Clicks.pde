int option = 1;
void setup() {
  size(800, 800);
  smooth();
  noFill();
}

void draw() {
  background(8);

  if (option == 1) {
    // Option 1: Triangle
    for (int e=0; e<height; e=e+20) {
      for (int l=0; l<width; l=l+20) {
        fill( int(random(e-160)), random(l+40), int(random(l-30)), int(random(50)) );
        triangle(l, e, l+200, e+30, l-50, e-190);
        noStroke();
      }
    }
  } else if (option == 2) {
    // Option 2: Piano
    for (int x=0; x<width; x=  x+20) {
      for (int y=0; y<height; y=y+20) {
        rect(x-20, y+70, x+30, y+80);
        rect(x, y/50, y-30, x+40);
        fill(random(y+90));
      }
    }
  } else if (option == 3) {
    // Option 3: Circle
    for (int x=0; x<=width; x+=20) { // loop of x
      for (int y=0; y<=height; y+=20) { // loop of y
        ellipse(x, y, 40, 40);
        ellipse(x, y, 40, 40);
        fill(random(200, 255), random(255), random(250), 155); //random color
        fill(random(100, 255), int(random(100, 255)), int(random(100, 255)), 155); //random color
        fill( int(random(200, 255)), int(random(100, 255)), int(random(100, 255)), 200); //random color
      }
    }
  } else if (option == 4) {
    // Option 4: Lines
    for (int x=0; x<width; x= x+20) {
      for (int y=0; y<height; y=y+20) {
        line(x-20, y+50, x+30, y+80);
        line(x, y, y-30, x+40);
        stroke(255);
      }
    }
  } else if (option == 5) {
    // Option 5: Criss Cross
    stroke(255, 0, 0); //bright red weft
    strokeWeight(5);
    for (int i=0; i<10; i++) {
      line(0, 150+i*10, 800, -10+i*10);
    }

    stroke(255, 0, 0); //bright red warp
    strokeWeight(5);
    for (int i=0; i<10; i++) {
      line(100+i*10, 0, 100+i*10, 800);
    }
    stroke(255, 0, 0); //bright red weft
    strokeWeight(5);
    for (int i=0; i<10; i++) {
      line(0, 350+i*10, 800, 190+i*10);
    }
    strokeWeight(5);
    for (int i=0; i<10; i++) {
      line(0, -50+i*10, 800, -170+i*10);
    }
    stroke(255, 0, 0); //bright red warp
    strokeWeight(5);
    for (int i=0; i<10; i++) {
      line(300+i*10, 0, 300+i*10, 800);
    }
    stroke(255, 0, 0); //bright red warp
    strokeWeight(5);
    for (int i=0; i<10; i++) {
      line(500+i*10, 0, 500+i*10, 800);
    }
    stroke(255, 0, 0); //bright red warp
    strokeWeight(5);
    for (int i=0; i<10; i++) {
      line(700+i*10, 0, 700+i*10, 800);
    }
    stroke(255, 0, 0); //bright red warp
    strokeWeight(5);
    for (int i=0; i<10; i++) {
      line(900+i*10, 0, 900+i*10, 800);
    }
    stroke(255, 175, 0); //yellow weft
    strokeWeight(5);
    for (int i=0; i<10; i++) {
      line(0, 50+i*10, 800, -110+i*10);
    }
    stroke(255, 175, 0); //yellow weft
    strokeWeight(5);
    for (int i=0; i<10; i++) {
      line(0, 250+i*10, 800, 90+i*10);
    }
    stroke(255, 175, 0); //yellow weft
    strokeWeight(5);
    for (int i=0; i<10; i++) {
      line(0, 450+i*10, 800, 290+i*10);
    }
    stroke(255, 175, 0); //yellow weft
    strokeWeight(5);
    for (int i=0; i<10; i++) {
      line(0, 650+i*10, 800, 490+i*10);
    }
    stroke(255, 175, 0); //yellow weft
    strokeWeight(5);
    for (int i=0; i<10; i++) {
      line(0, 850+i*10, 800, 690+i*10);
    }
    stroke(255, 0, 0); //bright red weft
    strokeWeight(5);
    for (int i=0; i<10; i++) {
      line(0, 550+i*10, 800, 390+i*10);
    }
    stroke(255, 0, 0); //bright red weft
    strokeWeight(5);
    for (int i=0; i<10; i++) {
      line(0, 750+i*10, 800, 590+i*10);
    }
    stroke(0, 0, 75); //dark blue warp
    strokeWeight(5);
    for (int i=0; i<10; i++) {
      line(0+i*10, 0, 0+i*10, 800);
    }
    stroke(0, 0, 75); //dark blue warp
    strokeWeight(5);
    for (int i=0; i<10; i++) {
      line(200+i*10, 0, 200+i*10, 800);
    }
    stroke(0, 0, 75); //dark blue warp
    strokeWeight(5);
    for (int i=0; i<10; i++) {
      line(400+i*10, 0, 400+i*10, 800);
    }
    stroke(0, 0, 75); //dark blue warp
    strokeWeight(5);
    for (int i=0; i<10; i++) {
      line(600+i*10, 0, 600+i*10, 800);
    }
  }
}

void mousePressed() {
  option++;
  if (option > 5) option = 1;
}
