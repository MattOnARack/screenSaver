Line l1;
LineDos l2;
LineTres l3;
LineQuatro l4;
void setup() {
  background(random(100, 255));
  size(900, 800);
  l1 = new Line(random(width), random(height));
  l2 = new LineDos(random(width), random(height));
  l3 = new LineTres(random(width), random(height));
  l4 = new LineQuatro(random(width), random(height));
  frameRate(120);
}

void draw() {
  int rand = int(random(4));
  if (rand == 0) {
    l1.display();
    ;
  } else if (rand == 1) {
    l2.display();
    ;
  } else if (rand == 2) {
    l3.display();
    ;
  } else {
    l4.display();
    ;
  }
}
