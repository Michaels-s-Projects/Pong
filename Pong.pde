boolean start = false;
String startText = "Press Space";
int gameMode = 0;

//racket 
int x1 = 400;
int x2 = 400;
int racketSpd = 8;
int y1 = 50;
int w1 = 200;
int h1 = 25;
int y2 = 750;
int w2 = 200;
int h2 = 25;

//ball 

int x = 400;
int y = 400;
int ySpd = 5;
int xSpd = 6;
int startDir = int(random(1, 4));

//Score

int scoreP1 = 0;
int scoreP2 = 0;

//Pause

boolean paused = true;


void setup() {
  size(800, 800);
}

void draw() {
  startScreen();
  if (start==true) {
    if (gameMode == 1) {
      racket1();
      racket2();
      ball();
      computerMovement();
      racketCollision();
      score();
    }

    if (gameMode == 2) {
      racket1();
      racket2();
      ball();
      playerOneMovement();
      playerTwoMovement();
      score();
      racketCollision();
    }
  }

  if (gameMode == 1) {
    if (scoreP1 == 10) {
      gameOver();
      text("You Lost!", width/2, 50);
    }
    if (scoreP2 == 10) {
      gameOver();
      text("You Won!", width/2, 50);
    }
  }
  if (gameMode == 2) {
    if (scoreP1 == 10) {
      gameOver();
      text("Player 1 Wins!", width/2, 50);
    }
    if (scoreP2 == 10) {
      gameOver();
      text("Player 2 Wins!", width/2, 50);
    }
  }
}
