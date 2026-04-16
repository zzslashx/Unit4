//Programming 11
//Cheng Cheng
//Experiment 4 with gradient (color lerp) + loops

//Colors
//essential primaries
color warmYellow  = #FFDF00;
color coolYellow  = #F1FF5E;
color white       = #F9F6F0;
color cyan        = #00FFFF;
color warmBlue    = #180A8F;
color coolBlue    = #0055A4;
color pink        = #FF69B4;
//Earth Tones
color brightRed   = #FF0000;
color brightOrange= #FF5F1F;
color warmGreen   = #7BB661;
color coolGreen   = #00A86B;
//black
color ivoryBlack  = #000000;

void setup() {
  size(800, 800);
  drawGradientRect(width/2, height/2, width, height, coolYellow, coolBlue); // background

  int step = 60;
  for (int i = 0; i < width; i += step) {
    for (int j = 0; j < height; j += step) {
      ring(j, i, 55);
    }
  }
}

void drawGradientRect(float cx, float cy, float w, float h, color c1, color c2) {
  noStroke();
  float x = cx - w / 2.0;  //math !! to make center top left
  float y = cy - h / 2.0;
  for (int i = 0; i < h; i++) {
    float t = map(i, 0, h, 0, 1);
    color c = lerpColor(c1, c2, t);
    stroke(c);
    line(x, y + i, x + w, y + i);
  }
}

void ring(int x, int y, int r) {
  float s1 = r / 3.0;
  float s2 = r / 3.0 * 2;
  float s3 = r;

  drawGradientRect(x, y, r, r, brightOrange, brightRed);
  drawGradientRect(x, y, r - s1, r - s1, warmYellow, brightOrange);
  drawGradientRect(x, y, r - s2, r - s2, coolGreen, warmYellow);

  drawGradientRect(x, y, max(r - s3 + s1, 4), max(r - s3 + s1, 4), cyan, coolGreen);
}
