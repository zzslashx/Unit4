void setup() {
  size(600, 600);
  rectMode(CENTER);
  noFill();
  
  for (int i = width; i >= 10; i -= 10) {
    rect(300, 300, i, i / 2);
  }
}
