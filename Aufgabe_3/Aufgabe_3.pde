import processing.pdf.*;
Circle c1;
Circle c2;
Circle c3;
Circle c4;
Circle c5;
Circle c6;
Circle c7;
Circle c8;
Circle c9;
Circle c10;
Circle c11;
Circle c12;
Circle c13;
Circle c14;
Circle c15;
Circle c16;
Circle c17;
Circle c18;
Circle c19;
Circle c20;


void setup() {
  size(1191, 1684);

  float circlewidth = (width/3)/2;

  c1 = new Circle(0.1, circlewidth, 0, 0);
  c2 = new Circle(0.4, circlewidth, width*2/6, 0);
  c3 = new Circle(0.1, circlewidth, width*6/6, 0);
  c4 = new Circle(0.1, circlewidth, width*4/6, 0);

  c5 = new Circle(0.1, circlewidth, circlewidth, circlewidth*2);
  c6 = new Circle(0.4, circlewidth, (width*2/6)+circlewidth, circlewidth*2);
  c7 = new Circle(0.1, circlewidth, (width*4/6)+circlewidth, circlewidth*2);
  c8 = new Circle(0.1, circlewidth, (width*6/6)+circlewidth, circlewidth*2);


  c9 = new Circle(0.1, circlewidth, 0, circlewidth*4);
  c10 = new Circle(0.4, circlewidth, width*2/6, circlewidth*4);
  c11 = new Circle(0.4, circlewidth, width*4/6, circlewidth*4);
  c12 = new Circle(0.1, circlewidth, width*6/6, circlewidth*4);

  c13 = new Circle(0.1, circlewidth, circlewidth, circlewidth*6);
  c14 = new Circle(0.4, circlewidth, (width*2/6)+circlewidth, circlewidth*6);
  c15 = new Circle(0.1, circlewidth, (width*4/6)+circlewidth, circlewidth*6);
  c16 = new Circle(0.1, circlewidth, (width*6/6)+circlewidth, circlewidth*6);


  c17 = new Circle(0.1, circlewidth, 0, circlewidth*8);
  c18 = new Circle(0.4, circlewidth, width*2/6, circlewidth*8);
  c19 = new Circle(0.4, circlewidth, width*4/6, circlewidth*8);
  c20 = new Circle(0.1, circlewidth, width*6/6, circlewidth*8);
  saveFrame("data/social-distance-######.png");
}

void draw() {
  background(0);

  c1.show();
  c2.show();
  c3.show();
  c4.show();
  c5.show();
  c6.show();
  c7.show();
  c8.show();
  c9.show();
  c10.show();
  c11.show();
  c12.show();
  c13.show();
  c14.show();
  c15.show();
  c16.show();
  c17.show();
  c18.show();
  c19.show();
  c20.show();


  stroke(#ff0000);

  fill(255, 0.8);
  circle(mouseX, mouseY, 100);
  if (mouseX < 300) {
    textAlign(LEFT);
    fill(255, 40);
  } else if (mouseX < 650) {
    textAlign(CENTER);
    fill(255, 60);
  } else if (mouseX < 800) {
    textAlign(CENTER);
    fill(255, 80);
  } else if (mouseX < width) {
    textAlign(RIGHT);
    fill(255);
  }
  textSize(100);
  text("SOCIAL DISTANCE", mouseX, mouseY);
}


// event that gets fired whenever the mouse button is released
void mouseReleased() {
  // save current frame to project folder
  saveFrame("data/social-distance-######.png");
}
