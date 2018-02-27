class Blokje 
{
  int x;
  int y;
  int h;
  int w;
  
  int xRichting = 1;
  int yRichting = 1;
  
  Blokje (int w, int h, int y, int x){
   this.w = w;
   this.h = h;
   this.x = x;
   this.y = y;
   
  }
  void draw() { 
   rect(x, y, w, h); 
  }
  void update() {
     x += xRichting;
     y += yRichting;
  }
  void grow(){
    w += 1;
    h += 1;
  }
}

Blokje b1 = new Blokje(10, 10, 50,50);
Blokje b2 = new Blokje(10, 10, 100,200);

void setup()
{
  size(300,300);
  frameRate(60);
}

void draw()
{
  background(200);
  b1.draw();
  b2.draw();
  
  if(mousePressed == true && mouseButton == LEFT) {
   b1.update();
   b2.update();
  }
  
  if(mousePressed == true && mouseButton == RIGHT) {
   b1.grow();
   b2.grow();
 }
}