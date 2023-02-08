public void setup() {
  size(500, 500);
  ellipseMode(CENTER);
}

public void draw() {
  background(0);
  //translate(width/6, height/6);
  //rotate(frameCount / 100.0);
  fractal(250, 250, 200);
  
  
}

public void fractal(int x, int y, int siz) {
  /*
  pushMatrix();
  translate(width*0.2, height*0.5);
  triangle(250, 250, 100, 3);  // Triangle
  popMatrix();
  */
  ellipse(x, y, siz, siz);
  // base case is if siz <= 10
  if(siz > 10) {
    fractal(x-siz/2, y, siz/2);
    fractal(x+siz/2, y, siz/2);
    fractal(x, y-siz/2, siz/2);
    fractal(x, y+siz/2, siz/2);
    fractal(x, y, siz/2);
  }
}
