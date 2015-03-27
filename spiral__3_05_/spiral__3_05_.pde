int a = -750;
int c = -750;
float d = 0;
float b = 0;
float x, y;
int centX = 625;
int centY = 350;
void setup() {
  size(1275, 750);
  background(0);
  strokeWeight(0.5);

  smooth();
  for (int i=0; i<100; i++) {
    float lastx = -999;
    float lasty = -999;
    float radiusNoise = random(10);
    float radius = 10;
    stroke(random(20), random(50), random(70), 80); // colour of line

    int startangle = int(random(360));
    int endangle = 1440 + int(random(1440));
    int anglestep = 5 + int(random(3));
    for (float ang = startangle; ang <=endangle; ang += anglestep) {
      radiusNoise +=0.05;
      radius +=0.5;
      float thisRadius = radius + (noise(radiusNoise)*200)-100;
      float rad = radians(ang);
      x = centX + (thisRadius * cos(rad));
      y = centY + (thisRadius * sin(rad));
      if (lastx > -999) {
        stroke(#6D00F0);
        line(x, y, lastx, lasty);
      }
      lastx = x;
      lasty = y;
    }
  }
}
void draw() {
  translate(width/2, height/1); 
  scale(1, -1);
  // increment horizontal position
  a = a+3;
  b = 0.0023 * (a * a);
  stroke(255);
  line(a-15, b, a+15, b);
  // increment horizontal position
  c=c+3;
  d = 0.0025 * (c * c);
  stroke(#25CE1D);
  line(c, d-5, c, d+5);
  
}
