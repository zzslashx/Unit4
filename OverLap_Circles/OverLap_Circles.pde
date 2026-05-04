

void setup() {
  size(1000,400);
stroke(0);
  

  for (int i = 0; i < height+75; i += 100) {
    for (int j = 0; j < width+75; j += 100) {
    
      ring(j, i, 150);
   
    
    }
  }
}

void ring(int x, int y, int r) {
  float spacing = r / 5.0;

  circle(x, y, r);
  circle(x, y, r - spacing);
  circle(x, y, r - 2 * spacing);
  circle(x, y, r - 3 * spacing);
    circle(x, y, r - 4 * spacing);
      circle(x, y, r - 5 * spacing);
}
