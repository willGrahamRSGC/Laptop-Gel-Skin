int a = -730;
int priora = -730;
int c = -730;
int priorc = -730; // priors make the lines creat fluently rather than just in dots
int e = -730; // a, c and e are examples of the x intercepts
int priore = -730;
float f = 0;
float priorf = 0;
float d = 0;
float priord = 0;
float b = 0; // b, d and f are examples of the y intercepts
float priorb = 0; //priors make the lines creat fluently rather than just in dots
float x, y;
float z = 0.0;
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
  background(204);
  z = z + .01;
  float n = noise(z) * width;
  line(n,0,n, height);
  translate(width/2, height/1); 
  scale(1, -1);
  // increment horizontal position
  priora = a;
  a = a+3;
  priorb = b;
  //b = 0.0023 * (a * a);
  b = 0.0023 * (a * a);
  b = b+(height/8)*cos(radians((a-180)/.5));
  stroke(255);
  line(a-20, b, a+20, b);
  line(priora, priorb, a, b);
  // increment horizontal position
  priorc = c;
  c=c+3;
  priord = d;
  d = 0.0025 * (c * c);
  //d = d + (height/8)*sin(radians((a-200)/.5));  //  
  stroke(#25CE1D);
  line(priorc, priord, c, d);
  d = d + (height/8)*sin(radians((a-200)/.5)); //creates green sine 
  translate(0, height/1);
  scale(1, -1);
  priore = e;
  e=e+4;
  priorf = f;
  f = 0.002 * (e * e);
  stroke(#07E8E6);
  line(priore, priorf, e, f);
   f = f +(height/8)*cos(radians((a-180)/.5)); //cosine of the teal line
}
