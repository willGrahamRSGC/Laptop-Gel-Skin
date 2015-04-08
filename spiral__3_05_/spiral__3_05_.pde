int a = -500;
int priora = -530;
/*
int c = -530;
int priorc = -530; // priors make the lines creat fluently rather than just in dots
int e = -530; // a, c and e are examples of the x intercepts
int priore = -530;
float f = 0;
float priorf = 0;
float d = 0;
float priord = 0;
*/
float b = 575; // b, d and f are examples of the y intercepts
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

  translate(width/2, height/1); 
  scale(1, -1);
  // increment horizontal position
  priora = a; // draw line between points of line to creat fluent line
  a = a+3; // increases x to move line
  priorb = b; // draw line between points of line to creat fluent line
  b = 0.0023 * (a * a);
  b = b+(height/8)*cos(radians((a-180)/.5)); // creates sine wave 
  stroke(255); // colouring of line
  line(a-20, b, a+20, b); // the white line the +20 and -20 are to make the step like pattern
  line(priora, priorb, a, b);
  // increment horizontal position
  /*
  priorc = c; // draw line between points of line to creat fluent line
  c=c+3; // increases x to move line
  priord = d; // draw line between points of line to creat fluent line
  d = 0.0025 * (c * c);
  stroke(#25CE1D);
  line(priorc, priord, c, d);
  d = d + (height/8)*sin(radians((a-200)/.5)); //creates green sine 
  translate(0, height/1);
  scale(1, -1);
  
  priore = e; // draw line between points of line to creat fluent line
  e=e+4; // increases x to move line
  priorf = f; // draw line between points of line to creat fluent line
  f = 0.002 * (e * e); // creates differnce and slope of parabla
  stroke(#07E8E6); // colour of parabla
  line(priore, priorf, e, f);
  f = f +(height/8)*cos(radians((a-180)/.5)); //cosine of the teal line
  */
}
