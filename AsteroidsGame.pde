//your variable declarations here
Star[] night = new Star[200];
Spaceship bob = new Spaceship();
public void setup() 
{
  size(500,500);
  for(int i = 0; i < night.length; i++){
  	night[i] = new Star();
  }
}
public void draw() 
{
  background(0);
  bob.move();
  bob.show();
  for(int i =0; i < night.length; i++){
  	night[i].show();
  }
}
public void keyPressed()
{
	if(key == 'h')
	{
		bob.setDirectionX(0);
	}
  if(key == 'w')
  {
    bob.accelerate(2);
  }
  if(key == 's')
  {
    bob.accelerate(-2);
  }
  if(key == 'a')
  {
    bob.turn(-5);
  }
  if(key == 'd')
  {
    bob.turn(5);
  }
}
