int x = 0;
int y = 0;
int my = 2;
int mx = -2;
int p2y = 100;
PShape D; 
  

void setup() {
    size(640, 360);
  // The file "Donut.svg" must be in the data foldero
  // of the current sketch to load successfully
  D = loadShape("Donut.svg");
}
 
void draw() {
drawBackground();
  //Paddle
  rect(40, mouseY, 10, 50);
  rect(560, p2y, 10, 48);
  shape(D,x, y, 10, 10);
  x = x + mx;
  y = y + my;
 
  if (y > height || y < 0) {
    my = my * -1;
  }
  if (x > width  || x < 0) {
    mx = mx * -1;
  }
 
  // check if we have hit the paddle!
  if (x > 40 && x < 50) {
    if (y > mouseY && y < (mouseY+30)) {
      //BOUNCE!!
      mx = mx * -2;
      println("YAY!");
    }
  }
  
  if (keyPressed) {
    if (key == 'o') {
      p2y = p2y - 10;
    }
  }
if (keyPressed) {
    if (key == 'l') {
      p2y = p2y + 10;
    }
  }
}

void drawBackground(){
  background(#9999FF);
  shape(D, 250, 90, 90, 100); 
  shape(D, 280, 40);
}
