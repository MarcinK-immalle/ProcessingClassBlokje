
class Blokje {
  int originalWidth;
  int originalHeight;
  int w;
  int h;
  int x;
  int y;
  
  int xRichting = 1;
  int yRichting = 1;
  
  Blokje(int width, int height, int x, int y) {
    w = width;
    h = height;
    originalWidth = w;
    originalHeight = h;
    this.x = x;
    this.y = y;
  }
  
  void update() {
    x += xRichting;
    y += yRichting;
  }
  
  void draw() {
    rect(x, y, w, h);
  }
  
  void grow() {
    w += 1;
    h += 1;
  }
  
  void resetSize() {
    w = originalWidth;
    h = originalHeight;
  }
  
  void goUp() {
    xRichting = 0;
    yRichting = -1;
  }
  
  void goDown() {
    xRichting = 0;
    yRichting = 1;
  }
  
  void goLeft() {
    xRichting = -1;
    yRichting = 0;
  }
  
  void goRight() {
    xRichting = 1;
    yRichting = 0;
  }
  
  void goManual(int xRichting, int yRichting) {
    this.xRichting = xRichting;
    this.yRichting = yRichting;
  }
}

Blokje b1 = new Blokje(10, 10, 100, 10);
Blokje b2 = new Blokje(10, 20, 200, 10);

void setup() {
  size(200,200);
  frameRate(10);
}

void draw() {
  clear();
  String[] lines = loadStrings("D:\\5ITN\\Marcin\\Tools\\Processing\\MyProcssing\\ProcessingClassBlokje\\instructions.txt");
  switch(lines[0]) {
    case "UP":
      b1.goUp();
      break;
    case "DOWN":
      b1.goDown();
      break;
    case "LEFT":
      b1.goLeft();
      break;
    case "RIGHT":
      b1.goRight();
      break;
  }
  b1.update();
  b1.draw();
}