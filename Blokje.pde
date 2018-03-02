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