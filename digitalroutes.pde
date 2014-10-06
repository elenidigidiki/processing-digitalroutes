//agents
Agent[] myAgents = new Agent [4]; 

float deltaAngle = PI/8;

void setup()
{
  size(600, 600);
  background(255);
  smooth();

  for (int i=0; i<myAgents.length; i++)
  { 
    myAgents[i] = new Agent();
  }
}

void draw()
{
  
  line (0, 0, 0, 599);
  line (0, 0, 599, 0);
  line (0, 599, 599, 599);
  line (599, 0, 599, 599);
  
  deltaAngle = map(mouseX, 0, width, 0, PI/2); 

  for (int i=0; i<myAgents.length; i++)
  {
    myAgents[i].draw();
    myAgents[i].move();

    if (i > 2)
      stroke(255, 0, 0);
    else
      stroke(0, 0, 0, 50);
  }
}
