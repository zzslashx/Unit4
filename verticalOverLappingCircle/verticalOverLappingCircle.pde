

void setup() {
  size(1000,600);
 stroke(0);
  

  for (int j = 0; j < height+1005; j += 100) {
    for (int i = 0; i < width+1005; i += 100) {
    
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
