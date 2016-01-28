class Player {
  float vSpeed, hSpeed, posX, posY;
  Player() {
    posX=width/2;
    posY=height/2;
    vSpeed=0;
    hSpeed=0;
  }
  Player(float x, float y){
   posX=x;
   posY=y;
   hSpeed=0;
   vSpeed=0;
  }
  void draw() {
    ellipse (posX, posY, 30, 30);
    posX+=hSpeed;
    posY+=vSpeed;
    hSpeed*=0.95;
    vSpeed*=0.95;
  }
  void moveUp() {
    if (vSpeed>=-2.5)
    {
      vSpeed-=0.5;
    } else
    {
      if (vSpeed>-3)
      {
        vSpeed=-3;
      }
    }
  }
  void moveDown() {
    if (vSpeed<=2.5)
    {
      vSpeed+=0.5;
    } else
    {
      if (vSpeed<3)
      {
        vSpeed=3;
      }
    }
  }
  void moveLeft() {
    if (hSpeed>=-2.5)
    {
      hSpeed-=0.5;
    } else
    {
      if (vSpeed>-3)
      {
        hSpeed=-3;
      }
    }
  }
  void moveRight() {
    if (hSpeed<=2.5)
    {
      hSpeed+=0.5;
    } else
    {
      if (hSpeed<3)
      {
        hSpeed=3;
      }
    }
  }
}