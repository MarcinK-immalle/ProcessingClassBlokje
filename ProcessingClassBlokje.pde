void setup()
{
  size(300,300);
  frameRate(60);
}

void draw()
{
  background(200);
  if (mousePressed){
   rect(mouseX,mouseY,10,10); 
  }
}