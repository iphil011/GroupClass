Player player;
boolean[] move;

void setup() {
  size(500, 500);
  move=new boolean[4];
  player=new Player();
}

void draw() {
  background(0);
  player.draw();
  if (move[0]) {
    player.moveLeft();
  }
  if (move[1]) {
    player.moveDown();
  }
  if (move[2]) {
    player.moveRight();
  }
  if (move[3]) {
    player.moveUp();
  }
}

void keyPressed() {
  if ((key == 'a')||(keyCode==LEFT)||(key=='A'))  move[0] = true;
  if ((key == 's')||(keyCode==DOWN)||(key=='S'))  move[1] = true;
  if ((key == 'd')||(keyCode==RIGHT)||(key=='D'))  move[2] = true;
  if ((key == 'w')||(keyCode==UP)||(key=='W'))  move[3] = true;
}

void keyReleased() {
  if ((key == 'a')||(keyCode==LEFT)||(key=='A'))  move[0] = false;
  if ((key == 's')||(keyCode==DOWN)||(key=='S'))  move[1] = false;
  if ((key == 'd')||(keyCode==RIGHT)||(key=='D')) move[2] = false;
  if ((key == 'w')||(keyCode==UP)||(key=='W'))  move[3] = false;
}