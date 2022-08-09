void setup(){
  size(720,900);
  PImage img = loadImage("test.jpg");
  for (int i=0; i<width; i++){
    for (int j=0; j<height; j++){
      if (i%10==0 && j%10==0){
        color t=img.get(i,j);
        fill(t);
        rect(i,j,10,10);
      }
    }
  }
}

void draw(){
  PImage img = loadImage("test.jpg");
  if (mousePressed){
    for (int i=0; i<width; i++){
      for (int j=0; j<height; j++){
        color t=img.get(i,j);
        stroke(blue(t),green(t),red(t));
        point(i,j);
      }
    }
  }
}
