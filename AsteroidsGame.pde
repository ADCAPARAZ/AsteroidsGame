//your variable declarations here

ArrayList <Asteroid> asteroids = new ArrayList <Asteroid>();
Star[] night = new Star[200];
Spaceship bob = new Spaceship();
public void setup() 
{
  size(500,500);
  for(int i = 0; i < night.length; i++){
  	night[i] = new Star();
  }
  for(int i = 0; i < 200; i++){
  	Asteroid a = new Asteroid();
  	asteroids.add(a);
  }
}
public void draw() 
{
  background(0);
  for(int i = 0; i< 5; i++){
  	asteroids.get(i).show();
  	asteroids.get(i).move();
  }
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
		bob.hyperspace();
	}
  if(key == 'w')
  {
    bob.move(2);
  }
  if(key == 's')
  {
    bob.accelerate(-1.2);
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