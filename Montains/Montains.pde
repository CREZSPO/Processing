float yoffset=0.0;
float shade = 0.00;
float rise; 

void setup() {
  size(600, 400);
  frameRate(100);
  background(0);
}

void draw() {
  color from = color (#D9F7ED);
  color to = color (#868383);
  color gradient = lerpColor (from, to, shade);
  shade = shade + 0.1;

  rise = rise + 2;
  
  if (rise>height){
    rise=rise*-1;
  }
      
  stroke (gradient,100);
  strokeWeight(3);
  float xoffset=0;
  fill(0);
  translate (0, rise);
  
  
  beginShape();
  for (float x=0; x<=width; x+=10){
    float y = map (noise(xoffset,yoffset),0,1,0, height);
    vertex (x,y);
    xoffset+=0.2;
  }
  yoffset +=0.02;
  vertex(width,height+20);
  vertex(0, height);
  endShape();
}
