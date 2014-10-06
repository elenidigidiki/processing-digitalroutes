class Agent
{

  float posX, posY, oldPosX, oldPosY;
  float walkingAngle;
  float speed;

  Agent ()
  {
    posX = random(0, width); //starting position X, Y
    posY = random(0, height);
    oldPosX = posX;
    oldPosY = posY;
    walkingAngle= random(0, 2*PI);
    speed = 3;
  } 


  void draw()  
  {

    line (posX, posY, oldPosX, oldPosY);
  }


  void move() 
  {
    walkingAngle += random(-deltaAngle, +deltaAngle);

    oldPosX = posX;
    oldPosY = posY;

    posX = oldPosX + cos(walkingAngle)*speed;
    posY = oldPosY + sin(walkingAngle)*speed;

    if (posX > width || posX < 0 || posY > height || posY < 0)
    {
      walkingAngle += PI/2;
    }
  }

  void reset (float x, float y)
  {
    posX = x;
    posY = y;
  }
}
