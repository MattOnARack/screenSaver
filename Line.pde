class Line {
  //Member Variables
  float xpos, ypos, strokeW, pointCount;
  //Constructor
  Line(float tempX, float tempY) {
    xpos = tempX;
    ypos = tempY;
  }
  //Display Method
  void display() {
    strokeW = random(5, 10);
    pointCount = random(1, 50);
    stroke(random(150, 255), 0, random(150, 255));
    strokeWeight(strokeW);
    int rand = int(random(4));
    if (xpos > width || xpos < 0 || ypos > height || ypos <0) {
      xpos = random(width);
      ypos = random(height);
    } else {
      if (rand == 0) {
        moveRight(xpos, ypos, pointCount);
      } else if (rand == 1) {
        moveUp(xpos, ypos, pointCount);
      } else if (rand == 2) {
        moveLeft(xpos, ypos, pointCount);;
      } else {
        moveDown(xpos, ypos, pointCount);
      }
    }
  }
  void moveRight(float startX, float startY, float moveCount) {
    for (float i=0; i<moveCount; i++) {
      point(startX + i, startY);
      xpos= startX + i;
    }
  }
  void moveLeft(float startX, float startY, float moveCount) {
    for (float i=0; i<moveCount; i++) {
      point(startX - i, startY);
      xpos = startX - i;
    }
  }
  void moveUp(float startX, float startY, float moveCount) {
    for (float i=0; i<moveCount; i++) {
      point(startX, startY - i);
      ypos = startY - i;
    }
  }
  void moveDown(float startX, float startY, float moveCount) {
    for (float i=0; i<moveCount; i++) {
      point(startX, startY + i);
      ypos = startY + i;
    }
  }
}
