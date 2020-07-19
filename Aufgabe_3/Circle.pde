class Circle { //<>//
  float theta = 0;
  //um Geschwindigkeit im Hauptsketch einzustellen
  float thetavalue = 0;
  float y;
  float x;
  float radius;
  float size = 100;
  float hue = random(160, 360);
  float wordsY=100;
  float wordsX=100;
  float textSize=100;

  Circle(float thetavalue, float radius, float x, float y) {
    this.thetavalue = thetavalue;
    this.radius = radius;
    this.x = x;
    this.y =y;
    this.radius = radius;
  }

  void show() {

    colorMode(HSB, 360, 100, 100);

    theta+= thetavalue;
    stroke(hue, 80, 60);

    noFill();
    for (float i=-0.5*PI; i<PI+0.5*PI; i+=0.01*PI) {

      pushMatrix();
      translate(x, y+radius);
      beginShape();
      for (float j=-sin(i)*(radius - size); j<sin(i)*(radius - size)+sin(i); j+=sin(i)*20) {
        curveVertex(j, cos(i)*(radius-size)+sin(theta-(j/40))*abs(i*10));
      }

      endShape(CLOSE);

      if (mouseX < 300) {
        size = 0;
      } else if (mouseX < 450) {
        size = 10;
      } else if (mouseX < 750) {
        size = 20;
      } else if (mouseX < 950) {
        size = 30;
      } else if (mouseX < 1100) {
        size = 40;
      }


      popMatrix();
    }
  }
}
