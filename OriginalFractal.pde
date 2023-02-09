public void setup() {
  size(1000, 1000);
  ellipseMode(CENTER);
}

public void draw() {
  background(0);
  // stroke((int)(Math.random() * 255));
  noFill();
  strokeWeight(3);
  fractal(500, 500, 1000);  
}

public void fractal(int x, int y, int siz) {
  // base case if siz < 10
  if(siz  < 10) {
  return;
  } else {
  stroke((int)(Math.random()*255), (int)(Math.random()*255), (int)(Math.random()*255));
  ellipse(x, y, siz, siz);
  ellipse(x+siz, y, siz, siz);
  ellipse(x-siz, y, siz, siz);
  ellipse(x, y+siz, siz, siz);
  ellipse(x, y-siz, siz, siz);
  ellipse(x, y, siz, siz);
  ellipse(x, y, siz, siz);
  fractal(x, y, siz-30);
  }
}
