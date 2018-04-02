void setup() {
  size(600, 600);
  background(255,255,255);
}

void draw() {
  translate(width/2, height);
  drawBranch(100);
  
}



void drawBranch(float len) {
  if (len < 5) {
    return;
  }
  else {
    line(0,0, 0, 0 - len);
    translate(0, -len);
    
    //draw left branch
    pushMatrix();
    rotate(PI/8);
    drawBranch(len*.8);
    popMatrix();
    
    //draw right branch
    pushMatrix();
    rotate(-PI/8);
    drawBranch(len*.8);
    popMatrix();
  }
}
