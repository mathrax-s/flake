class Flake{

  float x;
  float y;
  float s;
  float r;
  float xd;
  float yd;
  float t;
  float alpha;
  
  Flake(float xx, float yy, float ss) {
    x=xx;
    y=yy;
    s=ss;
  }
  
  void setParameter(float xx, float yy, float ss){
    x= xx;
    y= yy;
    s= ss;
    r = random(10);
    xd = random(20);
    yd = random(10);
    alpha = random(100)+100;
  }
  
  void snow() {
    s*=0.9;
    y+=yd;
    t+=0.1;
    
    alpha*=0.99;
    for (int i=0; i<6; i++) {
      pushMatrix();

      translate(x+sin(t)*xd, y);
      rotate(radians(frameCount)*r);
      scale(s);
      rotate(radians(360/6*i));

      strokeWeight(1);
      stroke(255);
      fill(255, alpha);

      beginShape();
      line(0, 0, 0, -100);
      line(0, -20, -20, -40);
      line(0, -20, 20, -40);
      line(0, -40, -20, -60);
      line(0, -40, 20, -60);
      line(0, -60, -20, -80);
      line(0, -60, 20, -80);
      line(0, -80, -20, -100);
      line(0, -80, 20, -100);
      endShape(CLOSE);

      popMatrix();
    }
  }
}