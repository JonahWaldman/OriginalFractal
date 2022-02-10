public void setup() {
  size(500, 500);
  rectMode(CENTER);
  //noLoop();
}
public void draw() {
  myFractal(250, 250, 400);
}
public void myFractal(float x, float y, float size) {
  if(mousePressed==true)
  fill((int)(Math.random()*256),(int)(Math.random()*256),(int)(Math.random()*256), (int)(Math.random()*256));
  ellipse(x, y, size,size);
  if (size > 10) {
    myFractal(x-size/2, y, size/2);
    myFractal(x+size/2, y, size/2);
    myFractal(x-size/4, y, size/2);
    myFractal(x+size/4, y, size/2);
  }
}
