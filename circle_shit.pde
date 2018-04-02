void setup() {
  size(600, 600);
}

void draw() {
  background(0,0,0);
  drawCircleFrac(width/2,175,200,0);
}

void circle(float x, float y, float r) {
  ellipse(x, y, r, r);
}

void drawCircleFrac(float xLoc, float yLoc, float radius,float a) {
  if (a > 255) {
    a = 255;
  }
  fill(a,97,255);
  circle(xLoc, yLoc, radius);
  if (radius < 5) {
    return;
  }
  else {
    //draw a circle to the left
    drawCircleFrac(xLoc - radius/2,yLoc + radius/3,radius/1.5, a + 40);
    //draw a circle to the right
    drawCircleFrac(xLoc + radius/2,yLoc + radius/3, radius/1.5, a + 40);
}
}
