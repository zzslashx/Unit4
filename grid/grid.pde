void setup() {
  size(600, 600);
  
  for (int i = 0; i <=width*2; i += 10) {
    line(0,i,width,i);    
    line(i,0,i,height);
    
  }
}
