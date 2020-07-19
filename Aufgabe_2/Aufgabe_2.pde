Line l1;
Line l2;
Line l3;
Line test;


void setup() {
  frameRate(2);
  size(1000, 1000);
  background(0);

  //2/6 ist der Endpunkt/Maximalpunkt vom ersten Bereich 
  l2 = new Line(width*4/6, height, width/3,168);
  //4/6 ist der Endpunkt/Maximalpunkt vom zweiten Bereich 
  l3 = new Line(width*6/6, height-150,width/3,50);
  //6/6 ist der Endpunkt/Maximalpunkt vom dritten Bereich = 1000
  l1 = new Line(width*2/6, height-100, width/3,234);
  test = new Line(width*4/6, height, width/3,308);
}

void draw() {

  l2.show();
  l1.show();
  l3.show();
  test.show();
    fill(0, 99);
  noStroke();
  rect(0, 0, width, height);
}
