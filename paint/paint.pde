color col;
float penSize;
int redBar, blueBar, greenBar, penBar;
String letters="**BACKSPACE** & Enter the Title.";

void setup(){
  size(800,800);
  rectMode(CENTER);
  redBar = 100;
  greenBar = 250;
  blueBar = 400;
  penBar = 650;
  background(255);
}

void draw(){
  if(mousePressed&&mouseY>100&&pmouseY>100)
    drawLine();
  fill(255);
  stroke(3);
  rect(width/2,50,width,100);
  fill(125);
  noStroke();
  rect(width/2,750,width,100);
  
  fill(0);
  float cursorPosition=textWidth(letters);
  line(cursorPosition, 300, cursorPosition,750);
  text(letters,150,780);

  barSlider();
  col = color(map(redBar,100,230,0,255),map(greenBar,250,380,0,255),map(blueBar,400,530,0,255));
  penSize = map(penBar,650,780,1,20);
  fill(col);
  noStroke();
  rect(50,750,penSize,penSize);
  
  textSize(20);
  fill(0);
  text("color",15,60);
  text("size",580,60);
  
  textSize(36);
}

void keyPressed(){

  if (key==BACKSPACE){
    if (letters.length()>0){
      letters=letters.substring(0,letters.length()-1);
    }
  } else if (textWidth(letters+key)<width){
    letters=letters+key;
  }
}

void text(){

}
  

void drawLine(){
  stroke(col);
  strokeWeight(penSize);
  line(mouseX,mouseY,pmouseX,pmouseY);
}

void barSlider(){
  if(mousePressed&&mouseY<80&&mouseY>20){
    if(mouseX>100&&mouseX<230)
      redBar = mouseX;
    else if(mouseX>250&&mouseX<380)
      greenBar = mouseX;
    else if(mouseX>400&&mouseX<530)
      blueBar = mouseX;
    else if(mouseX>650&&mouseX<780)
      penBar = mouseX;
  }
  stroke(0);
  strokeWeight(7);
  line(100,50,230,50);
  line(250,50,380,50);
  line(400,50,530,50);
  line(650,50,780,50);
  stroke(0);
  fill(255,0,0);
  rect(redBar,50,20,50);
  fill(0,255,0);
  rect(greenBar,50,20,50);
  fill(0,0,255);
  rect(blueBar,50,20,50);
  fill(255);
  rect(penBar,50,20,50);
}
