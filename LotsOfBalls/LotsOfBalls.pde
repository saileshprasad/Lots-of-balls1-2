int num = 12;

float[] x = new float[num];
float[] y = new float[num];
float[] xVelocity = new float[num];
float[] yVelocity = new float[num];
float[] diam = new float [num];

void setup() {
  colorMode(HSB, 360,100,100,100);
  size(800,600);
  strokeWeight(10);
  
  for (int i=0; i <num;i++) {
     x[i] = random(width*.25, width*.75);
    y[i] = random(height*.25, height*.75);
    xVelocity[i] = random(-5, 5);
    yVelocity[i] = random(-5, 5);
    diam[i] = random(3, 100);
  }
}

void draw() {
  background(0);
  fill(frameCount%360, 50,50);
  for (int i=0; i<num; i++) {
    ellipse(x[i],y[i],diam[i],diam[i]);
     x[i] += xVelocity[i];
     y[i] += yVelocity[i];
     
     if (x[i] >= width || x[i] <= 0) {
      xVelocity[i] *= -1;
      
     if (y[i] >= width || y[i] <= 0) {
       yVelocity[i] *= -1;
       
       
      
      
       
     }
     }
  }
}

     
    
  