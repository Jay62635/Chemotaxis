Bacteria[] arr = new Bacteria[25];
int col = 0;
void setup() {
  background(0);
  noStroke();
  size(500, 500);
  for (int i = 0; i<arr.length; i++)
    arr[i] = new Bacteria(i+10, i+10, #FF0303);
}
void draw() {
  for (int i = 0; i<arr.length; i++) {
    arr[i].move();
    arr[i].show();
  }
}
class Bacteria {
  int myX, myY, myColor;
  Bacteria(int x, int y, int col) {
    myX = x;
    myY = y;
    myColor = col;
  }
  void move() {
    int changeX = (int)(Math.random()*5);
    int changeY = (int)(Math.random()*5);
    if (mouseX-myX > 25 || myX-mouseX > 25)
      changeX *= 12;
    if (mouseX > myX)
      myX  += changeX;
    else
      myX  -= changeX;
    if (mouseY-myY > 25 || myY-mouseY > 25)
      changeY *= 12;
    if (mouseY > myY)
      myY  += changeY;
    else
      myY  -= changeY;
  }
  void show() {
    if (mousePressed){
      if (mouseButton == LEFT)
        fill(myColor);
      else if (mouseButton == RIGHT)
        background(0);
    }
    else
      noFill();
    ellipse(myX, myY, 10, 10);
  }
}
