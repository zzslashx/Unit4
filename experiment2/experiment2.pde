void setup(){

  size(800,800);

}
void draw(){
background(115,162,84);
  //hopeful ring
stroke(255,255,255,15);
strokeWeight(67.7);
noFill();
circle(400,400,600);
for (int i=0; i<800; i+=15){
fill(255,25);
if (i<800)
  line(400,400,i,0);
}
for (int i=0; i<800; i+=15){
line(400,400,0,i);
}
for (int i=0; i<800; i+=15){
line(400,400,800,i);
}
for (int i=0; i<800; i+=15){
line(400,400,i,800);
}
fill(115, 162, 84,55);
noStroke();
circle(400,400,600);
stroke(255,255,255,50);
strokeWeight(67.7);
  
}
