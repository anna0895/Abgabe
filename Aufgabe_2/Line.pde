class Line {
  int maxNumber=5;
  float x;
  float y;
  float breite;
  float hue;

  Line(float x, float y, float breite, float hue) {
    this.x = x;
    this.y = y;
    this.breite = breite;
    this.hue = hue;
  }

  void show() {
    pushMatrix();
    colorMode(HSB, 360, 100, 100);
    noFill();
    beginShape();
    for (int i=0; i<maxNumber; i++) {
      // x-(width/3) ist der Endpunkt des Bereichs und 
      curveVertex(random(x-(width/3), x), random(y));
      curveVertex(random(x-(width/3), x), random(y));
    }
    endShape();

    if (mouseX < 150) {
      //HSB
      stroke(hue, 50, 90);
    } else if (mouseX < 300) {
      //HSB
      stroke(hue+40, 50, 90);
    } else if (mouseX < 450) {
      //HSB
      stroke(hue+20, 50, 90);
    } else if (mouseX < 750) {
      //HSB
      stroke(hue+60, 50, 90);
    } else if (mouseX < 1000) {
      //HSB
      stroke(hue+70, 50, 90);
    }
    if (mouseY < 300) {
      strokeWeight(20);
    } else if (mouseY < 600) {
      strokeWeight(30);
    } else if (mouseY < 1000) {
      strokeWeight(40);
    } 
    popMatrix();
  }
}
