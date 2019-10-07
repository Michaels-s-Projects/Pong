void ball() {
  fill(255);
  ellipse(x, y, 25, 25);

  //starting direction 

  if (startDir==1) {
    y = y + ySpd;
    x = x + xSpd;
  }

  if (startDir==2) {
    y = y - ySpd;
    x = x + xSpd;
  }
  if (startDir==3) {
    y = y - ySpd;
    x = x - xSpd;
  }
  if (startDir==4) {
    y = y + ySpd;
    x = x - xSpd;
  }

  //bounce
  if (x <= 0 || x >= width) {
    xSpd = -xSpd;
  }
  if (y <= 0 || y >= height) {
    ySpd = -ySpd;
  }
  //Score 

  if (x >= 0 && y == 0) {
    scoreP1 = scoreP1 + 1;
    y = 400;
    x = 400;
  }
  if (x >= 0 && y == height) {
    scoreP2 = scoreP2 + 1;
    y = 400;
    x = 400;
  }
} 
