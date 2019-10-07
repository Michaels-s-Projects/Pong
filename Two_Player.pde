void playerOneMovement() {
  if (keyPressed) {
    if (key=='a' || key=='A') {
      x1 = x1 - racketSpd;
      x1 = constrain(x1, 100, width - 100);
    }
  }
  if (keyPressed) {
    if (key=='d' || key=='D') {
      x1 = x1 + racketSpd;
      x1 = constrain(x1, 100, width - 100);
    }
  }
}


void playerTwoMovement() {
  if (keyPressed) {
    if (key==CODED) { 
      if (keyCode==LEFT) {
        x2 = x2 - racketSpd;
        x2 = constrain(x2, 100, width - 100);
      }
    }
    if (keyPressed) {
      if (key==CODED) {
        if (keyCode==RIGHT) {
          x2 = x2 + racketSpd;
          x2 = constrain(x2, 100, width - 100);
        }
      }
    }
  }
}
