int maxNum = 200;

Flake[] flakes = new Flake[maxNum];
int count;

void setup() {
  //size(1280, 1024);
  fullScreen();
  
  for (int i=0; i<maxNum; i++) {
    flakes[i] = new Flake(-600, -600, 1);
  }
  noCursor();
}

void draw() {
  //background(0);
  noStroke();
  fill(0,20);
  rect(0,0,width,height);

  for (int i=0; i<maxNum; i++) {
    flakes[i].snow();
  }
}

void mouseMoved(){
  count++;
  if(count>=maxNum){
    count=0;
  }
  flakes[count].setParameter(mouseX,mouseY,0.5);
  
}