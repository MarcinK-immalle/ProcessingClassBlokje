class Blokje 
{
  int x;
  int y;
  
  int xRichting = 1;
  int yRichting = 1;
  
  Blokje (int y, int x){
   this.x = x;
   this.y = y;
   
  }
  void draw() { 
   rect(x, y, 10, 10); 
  }
  void update() {
     x += xRichting;
     y += yRichting;
  }
}

Blokje b1 = new Blokje(50,50);
Blokje b2 = new Blokje(100,200);

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
}