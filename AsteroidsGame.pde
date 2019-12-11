//your variable declarations here

ArrayList <Asteroid> asteroids = new ArrayList <Asteroid>();
Star[] night = new Star[200];
Spaceship bob = new Spaceship();
ArrayList <Bullet> pew = new ArrayList <Bullet>();
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
  for(int i = 0; i < 10; i++){
  	Bullet b = new Bullet();
  	pew.add(b);
  }
}
public void draw() 
{
  background(0);
   for(int i =0; i < night.length; i++){
  	night[i].show();
  }
  bob.move();
  bob.show();
  for(int i = 0; i < 10; i++){
  	pew.get(i).show();
  }
  for(int i = 0; i < 10; i++){
  	asteroids.get(i).show();
  }
  for(int i = 0; i < 10; i++){
  	asteroids.get(i).move();
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
    bob.accelerate(0.2);
  }
  if(key == 's')
  {
    bob.accelerate(-0.2);
  }
  if(key == 'a')
  {
    bob.turn(-7);
  }
  if(key == 'd')
  {
    bob.turn(7);
  }
}