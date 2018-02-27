class Blokje 
{
  int x;
  int y;
  
  Blokje (int y, int x){
   this.x = x;
   this.y = y;
   
  }
  void show() { 
   rect(x, y, 10, 10); 
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
  b1.show();
  b2.show();
}