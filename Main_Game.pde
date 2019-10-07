//Startscreen
//Score
//Pause Menu
//Game Over

void startScreen() {
  background(0);
  fill(255);
  textAlign(CENTER);
  textSize(48);
  text(startText, width/2, height/2);
  if (keyPressed) {
    if (key==' ') {
      start = true;
    }
  }
  textSize(48);
  textAlign(CENTER);
  text("Select Game Mode:", width/2, 150);
  if (mousePressed && mouseX <= 390 && mouseX >= 290 && mouseY <= 250 && mouseY >= 200) {
    fill(100);
    gameMode = 1;
  }
  rect(width/2 - 110, 200, 100, 50);
  fill(255);
  if (mousePressed && mouseX <= 510 && mouseX >= 410 && mouseY <= 250 && mouseY >= 200) {
    fill(100);
    gameMode = 2;
  }

  rect(width/2 + 10, 200, 100, 50);
  fill(0);
  text("1P", width/2 - 60, 245);
  text("2P", width/2 + 60, 245);
}


void score() {
  fill(0, 0, 255);
  textAlign(CENTER);
  textSize(40);
  text(scoreP1, 25, height/2 - 25);
  fill(255, 0, 0);
  text(scoreP2, 25, height/2 + 25);
}


void gameOver() {
  background(0);
  fill(255);
  textSize(48);
  textAlign(CENTER);
  text("Game Over: Press Space", width/2, height/2);
  if (keyPressed) {
    if (key==' ') {
      start = true;
      scoreP1 = 0;
      scoreP2 = 0;
    }
  }
}
