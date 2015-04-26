
int whiteX = -730;
int priorWhiteX = -730;
float f = 0;
float priorf = 0; 
int e = -730; // a, c and e are examples of the x intercepts
int priore = -730;
float c = 3;
// priors make the lines create fluently rather than just in dots
// higher pararbola

// lower parabola
float[] whiteY = new float [15]; // controls amount of lines created from whiteY
float[] priorWhiteY = new float [15]; //priors make the lines create fluently rather than just in dots
float[] whiteA = new float [15]; // creates many a values

// for circle in ceneter of background
float circleX;
float circleY;
float z = 0.0;
int centX = 625;
int centY = 350;


void setup() {
  size(1275, 750);
  background(0);
  strokeWeight(0.5);

  // this draws the circle in the center of the background
  smooth();
  //outer most ring
for (int i=0; i<100; i++) {
    float lastx = -999;
    float lasty = -999;
    float radiusNoise = random(10);
    float radius = 780; // controls radius of circle larger number larger radius
    int startangle = int(random(360));
    int endangle = 1440 + int(random(1440));
    int anglestep = 100 + int(random(.001)); // controlls size of circle
    for (float ang = startangle; ang <=endangle; ang += anglestep) {
      radiusNoise +=5;
      radius +=0.5;
      float thisRadius = radius + (noise(radiusNoise)*200)-100;
      float rad = radians(ang);
      circleX = centX + (thisRadius * cos(rad));
      circleY = centY + (thisRadius * sin(rad));
      if (lastx > -999) {
        stroke(#00176F); //#2607A5
        line(circleX, circleY, lastx, lasty);
      }
      
      lastx = circleX;
      lasty = circleY;
    }
  }
// blue ring in background
  for (int i=0; i<100; i++) {
    float lastx = -999;
    float lasty = -999;
    float radiusNoise = random(10);
    float radius = 300; // controls radius of circle larger the number larger the radius
    int startangle = int(random(360));
    int endangle = 1440 + int(random(1440));
    int anglestep = 5 + int(random(3)); // controlls size of circle
    for (float ang = startangle; ang <=endangle; ang += anglestep) {
      radiusNoise +=0.05;
      radius +=0.5;
      float thisRadius = radius + (noise(radiusNoise)*200)-100;
      float rad = radians(ang);
      circleX = centX + (thisRadius * cos(rad));
      circleY = centY + (thisRadius * sin(rad));
      if (lastx > -999) {
        stroke(#6D00F0);
        line(circleX, circleY, lastx, lasty);
      }
      lastx = circleX;
      lasty = circleY;
    }
  }
//large spread out purple circle
  for (int i=0; i<100; i++) {
    float lastx = -999;
    float lasty = -999;
    float radiusNoise = random(10);
    float radius = 150; // controls radius of circle larger the number larger the radius
    int startangle = int(random(360));
    int endangle = 1440 + int(random(1000));
    int anglestep = 2 + int(random(3)); // controlls size of circle
    for (float ang = startangle; ang <=endangle; ang += anglestep) {
      radiusNoise +=0.05;
      radius +=0.5;
      float thisRadius = radius + (noise(radiusNoise)*200)-100;
      float rad = radians(ang);
      circleX = centX + (thisRadius * cos(rad));
      circleY = centY + (thisRadius * sin(rad));
      if (lastx > -999) {
        stroke(#AA00F5);
        line(circleX, circleY, lastx, lasty);
      }
      lastx = circleX;
      lasty = circleY;
    }
  }
// tight pink circle in center
  for (int i=0; i<100; i++) {
    float lastx = -999;
    float lasty = -999;
    float radiusNoise = random(10);
    float radius = 16; // controls radius of circle larger number larger radius
    int startangle = int(random(360));
    int endangle = 1440 + int(random(1440));
    int anglestep = 18 + int(random(.001)); // controlls size of circle
    for (float ang = startangle; ang <=endangle; ang += anglestep) {
      radiusNoise +=5;
      radius +=0.5;
      float thisRadius = radius + (noise(radiusNoise)*200)-100;
      float rad = radians(ang);
      circleX = centX + (thisRadius * cos(rad));
      circleY = centY + (thisRadius * sin(rad));
      if (lastx > -999) {
        stroke(#E503FF); //#E503FF
        line(circleX, circleY, lastx, lasty);
      }
      
      lastx = circleX;
      lasty = circleY;
    }
  }

  //set stretch factor
  int whiteCounter = 1;
  whiteA[0] = 0.0000;
  while (whiteCounter < whiteA.length) {
    whiteA[whiteCounter] = whiteA[whiteCounter-1] +0.0001;
    whiteCounter = whiteCounter + 1;
  }

}


void draw() {

  translate(width/2, height/1); 
    priorWhiteX = whiteX; // draw line between points of line to creat fluent line
  whiteX = whiteX+3; // increases x to move line
  strokeWeight(1);
pushMatrix();
scale(1, 1);
translate(0,-700);
  priorWhiteY[0] = whiteY[0]; // draw line between points of line to creat fluent line
  whiteY[0] = whiteA[0] * (whiteX * whiteX); // quadratic equation
  whiteY[0] = whiteY[0]+(height/8)*cos(radians((whiteX-180)/c)); // creates sine wave 

  priorWhiteY[1] = whiteY[1]; // draw line between points of line to creat fluent line
  whiteY[1] = whiteA[1] * (whiteX * whiteX); // quadratic equation
  whiteY[1] = whiteY[1]+(height/8)*cos(radians((whiteX-180)/c)); // creates sine wave 

  priorWhiteY[2] = whiteY[2]; // draw line between points of line to creat fluent line
  whiteY[2] = whiteA[2] * (whiteX * whiteX); // quadratic equation
  whiteY[2] = whiteY[2]+(height/8)*cos(radians((whiteX-180)/c)); // creates sine wave 

  priorWhiteY[3] = whiteY[3]; // draw line between points of line to creat fluent line
  whiteY[3] = whiteA[3] * (whiteX * whiteX); // quadratic equation
  whiteY[3] = whiteY[3]+(height/8)*cos(radians((whiteX-180)/c)); // creates sine wave 

  priorWhiteY[4] = whiteY[4]; // draw line between points of line to creat fluent line
  whiteY[4] = whiteA[4] * (whiteX * whiteX); // quadratic equation
  whiteY[4] = whiteY[4]+(height/8)*cos(radians((whiteX-180)/c)); // creates sine wave 

  priorWhiteY[5] = whiteY[5]; // draw line between points of line to creat fluent line
  whiteY[5] = whiteA[5] * (whiteX * whiteX); // quadratic equation
  whiteY[5] = whiteY[5]+(height/8)*cos(radians((whiteX-180)/c)); // creates sine wave 

  priorWhiteY[6] = whiteY[6]; // draw line between points of line to creat fluent line
  whiteY[6] = whiteA[6] * (whiteX * whiteX); // quadratic equation
  whiteY[6] = whiteY[6]+(height/8)*cos(radians((whiteX-180)/c)); // creates sine wave 

  priorWhiteY[7] = whiteY[7]; // draw line between points of line to creat fluent line
  whiteY[7] = whiteA[7] * (whiteX * whiteX); // quadratic equation
  whiteY[7] = whiteY[7]+(height/8)*cos(radians((whiteX-180)/c)); // creates sine wave 

  priorWhiteY[8] = whiteY[8]; // draw line between points of line to creat fluent line
  whiteY[8] = whiteA[8] * (whiteX * whiteX); // quadratic equation
  whiteY[8] = whiteY[8]+(height/8)*cos(radians((whiteX-180)/c)); // creates sine wave 

  priorWhiteY[9] = whiteY[9]; // draw line between points of line to creat fluent line
  whiteY[9] = whiteA[9] * (whiteX * whiteX); // quadratic equation
  whiteY[9] = whiteY[9]+(height/8)*cos(radians((whiteX-180)/c)); // creates sine wave 

  priorWhiteY[10] = whiteY[10]; // draw line between points of line to creat fluent line
  whiteY[10] = whiteA[10] * (whiteX * whiteX); // quadratic equation
  whiteY[10] = whiteY[10]+(height/8)*cos(radians((whiteX-180)/c)); // creates sine wave 
stroke(#FFF700);
int counter = 0;
  while (counter < 11) {
    line(whiteX, whiteY[counter], whiteX, whiteY[counter]); // the white line the +20 and -20 are to make the step like pattern
    line(priorWhiteX-15, priorWhiteY[counter], whiteX+15, whiteY[counter]);
    println(whiteX);
    counter = counter + 1;
  }
  popMatrix();
  
pushMatrix();
  scale(1, -1);
  // increment horizontal position
 
  strokeWeight(1);

  priorWhiteY[0] = whiteY[0]; // draw line between points of line to creat fluent line
  whiteY[0] = whiteA[0] * (whiteX * whiteX); // quadratic equation
  whiteY[0] = whiteY[0]+(height/8)*cos(radians((whiteX-180)/c)); // creates sine wave 

  priorWhiteY[1] = whiteY[1]; // draw line between points of line to creat fluent line
  whiteY[1] = whiteA[1] * (whiteX * whiteX); // quadratic equation
  whiteY[1] = whiteY[1]+(height/8)*cos(radians((whiteX-180)/c)); // creates sine wave 

  priorWhiteY[2] = whiteY[2]; // draw line between points of line to creat fluent line
  whiteY[2] = whiteA[2] * (whiteX * whiteX); // quadratic equation
  whiteY[2] = whiteY[2]+(height/8)*cos(radians((whiteX-180)/c)); // creates sine wave 

  priorWhiteY[3] = whiteY[3]; // draw line between points of line to creat fluent line
  whiteY[3] = whiteA[3] * (whiteX * whiteX); // quadratic equation
  whiteY[3] = whiteY[3]+(height/8)*cos(radians((whiteX-180)/c)); // creates sine wave 

  priorWhiteY[4] = whiteY[4]; // draw line between points of line to creat fluent line
  whiteY[4] = whiteA[4] * (whiteX * whiteX); // quadratic equation
  whiteY[4] = whiteY[4]+(height/8)*cos(radians((whiteX-180)/c)); // creates sine wave 

  priorWhiteY[5] = whiteY[5]; // draw line between points of line to creat fluent line
  whiteY[5] = whiteA[5] * (whiteX * whiteX); // quadratic equation
  whiteY[5] = whiteY[5]+(height/8)*cos(radians((whiteX-180)/c)); // creates sine wave 

  priorWhiteY[6] = whiteY[6]; // draw line between points of line to creat fluent line
  whiteY[6] = whiteA[6] * (whiteX * whiteX); // quadratic equation
  whiteY[6] = whiteY[6]+(height/8)*cos(radians((whiteX-180)/c)); // creates sine wave 

  priorWhiteY[7] = whiteY[7]; // draw line between points of line to creat fluent line
  whiteY[7] = whiteA[7] * (whiteX * whiteX); // quadratic equation
  whiteY[7] = whiteY[7]+(height/8)*cos(radians((whiteX-180)/c)); // creates sine wave 

  priorWhiteY[8] = whiteY[8]; // draw line between points of line to creat fluent line
  whiteY[8] = whiteA[8] * (whiteX * whiteX); // quadratic equation
  whiteY[8] = whiteY[8]+(height/8)*cos(radians((whiteX-180)/c)); // creates sine wave 

  priorWhiteY[9] = whiteY[9]; // draw line between points of line to creat fluent line
  whiteY[9] = whiteA[9] * (whiteX * whiteX); // quadratic equation
  whiteY[9] = whiteY[9]+(height/8)*cos(radians((whiteX-180)/c)); // creates sine wave 

  priorWhiteY[10] = whiteY[10]; // draw line between points of line to creat fluent line
  whiteY[10] = whiteA[10] * (whiteX * whiteX); // quadratic equation
  whiteY[10] = whiteY[10]+(height/8)*cos(radians((whiteX-180)/c)); // creates sine wave 

  stroke(#FFF700); // colouring of line

  //draws my parabolas
  counter = 0;
  while (counter < 11) {
    line(whiteX, whiteY[counter], whiteX, whiteY[counter]); // the white line the +20 and -20 are to make the step like pattern
    line(priorWhiteX-15, priorWhiteY[counter], whiteX+15, whiteY[counter]);
    println(whiteX);
    counter = counter + 1;
  }
 popMatrix();
 
}
