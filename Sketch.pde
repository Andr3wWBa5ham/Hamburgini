// y = 5x

// x = 5t

// y = 3t + 3

float t;

void setup() {
  background(20);
  size(500, 500);
}

void draw() {
  stroke(250);
  strokeWeight(8);
 
  translate(width/2, height/2);
  
  point(x(t), y(t));
  t++;
}


float x(float t) {
  return sin(t / 15) * 150 + sin(t / 5) * 2;
}

float y(float t) {
  return sin(t / 50) * 100;
}
  
  