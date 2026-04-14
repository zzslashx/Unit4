void setup() {
  size(1000, 1000);
//backgound
drawGradientRect(0, 0, width, height, color(10, 250, 40), color(100, 150, 255));

scale(0.8);
drawGradientRect(450, 450, 300, 300, color(255, 0, 0), color(0, 0, 255));
drawGradientRect(850, 450, 300, 300, color(255, 255, 255), color(0, 0, 0));
drawGradientRect(50, 450, 300, 300, color(255, 0, 255), color(0, 255, 255));
}

void drawGradientRect(int x, int y, int w, int h, color c1, color c2) {
  noStroke();
  for (int i = 0; i < h; i++) {
    float t = map(i, 0, h, 0, 1);
    color c = lerpColor(c1, c2, t);
    stroke(c); 
    line(x, y + i, x + w, y + i);
  }
}
