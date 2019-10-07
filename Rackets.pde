void racket1() {
  background(0);
  fill(255);
  rectMode(CENTER);
  rect(x1, y1, w1, h1);
}

void racket2() {
  fill(255);
  rectMode(CENTER);
  if (gameMode == 1) {
    rect(mouseX, y2, w2, h2);
  }
  if (gameMode == 2) {
    rect(x2, y2, w2, h2);
  }
}

void computerMovement() {
  x1 = x1 + racketSpd;
  if (x1 >= 675) {
    racketSpd = -racketSpd;
  } 
  if (x1 <= 125) {
    racketSpd = -racketSpd;
  } 
  if (x1-100 <= x && x <= x1 + 100 && y == 75) {
    ySpd = -ySpd;
  }
}

void racketCollision() {
  if (gameMode == 1) {
    if (mouseX-100 <= x && x <= mouseX + 100 && y == 725) {
      ySpd = -ySpd;
    }
  }
  if (gameMode == 2) {
    if (x1-100 <= x && x <= x1 + 100 && y == 75) {
      ySpd = -ySpd;
    }
    if (x2-100 <= x && x <= x2 + 100 && y == 725) {
      ySpd = -ySpd;
    }
  }
}
