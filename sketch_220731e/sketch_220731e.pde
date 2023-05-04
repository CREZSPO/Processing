int n = 120;
float[][] magnets = new float[n][n];
float[][] forces = new float[n][n];
int time = 0;
int scale = 1;

void setup() {
  //size(10*n-10,20*n-10);
  size(1112, 834);
  colorMode(HSB, 255);
  int sx = 0.01*scale;
  int sy = 400*scale;

  background(250);
  strokeWeight((random(1, 5))*scale);
  for (int i=0; i<n; i++) {
    for (int j=0; j<n; j++) {
      magnets[i][j] = random(2*PI);
      forces[i][j] = 0.0;
    }
  }
}

void draw() {
  for (int i=0; i<n; i++) {
    for (int j=0; j<n; j++) {
      forces[i][j] = 1.5*(noise(0.1*i, 0.1*j, 0.01*time)-0.5);
    }
  }

  fill(0, 0, 100, 10);
  rect(0, 0, width, height);
  for (int i=0; i<n; i++) {
    for (int j=0; j<n; j++) {

      pushMatrix();
      translate(12*scale*i, 12*scale*j);

      rotate(magnets[i][j]);
      strokeWeight(2*scale);
      stroke((140+20*(abs(magnets[i][j]) % 5))%255, 255, 255);
      line(40*scale, 0, 0, 0);

      if (abs(magnets[i][j]) % 3.12 < 0.2) {
        stroke(0, 50, 200);
        line(10*scale, 0, 0, 0);
      }

      if (i<0) {
        forces[i][j] -= magnets[i][j] - magnets[i+100][j];
      }
      if (i>(random(1, 3))) {
        forces[i][j] -= magnets[i][j] - magnets[i-1][j];
      }
      if (j<0) {
        forces[i][j] -= magnets[i][j] - magnets[i][j+100];
      }
      if (j>(random(1, 3))) {
        forces[i][j] -= magnets[i][j] - magnets[i][j-1];
      }

      magnets[i][j] += 0.35*forces[i][j];
      popMatrix();
    }
  }
  time++;
}

void mousePressed() {
  for (int i=0; i<n; i++) {
    for (int j=0; j<n; j++) {
      magnets[i][j] = random(-10, 100);
    }
  }
}
