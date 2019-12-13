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
  for(int i = 0; i < 15; i++){
  	Asteroid a = new Asteroid();
  	asteroids.add(a);
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

  for(int i = 0; i < asteroids.size(); i++){
  	asteroids.get(i).show();
  }
  for(int i = 0; i < asteroids.size(); i++){
  	asteroids.get(i).move();
  }
  for(int i = 0; i < pew.size(); i++){
  	pew.get(i).move();
  }
  for(int i = 0; i < pew.size(); i++){
  	pew.get(i).show();
  }
  for(int i = 0; i < asteroids.size(); i++){
  	for(int j = 0; j < pew.size(); j++){
  		if(dist(asteroids.get(i).getX(), asteroids.get(i).getY(), pew.get(j).getX(), pew.get(j).getY()) < 20){
  			asteroids.remove(i);
  			pew.remove(j);
  		}
  	}
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
    bob.accelerate(0.4);
  }
  if(key == 's')
  {
    bob.accelerate(-0.4);
  }
  if(key == 'a')
  {
    bob.turn(-7);
  }
  if(key == 'd')
  {
    bob.turn(7);
  }
  if(key == ' ')
  {
  	Bullet b = new Bullet();
  	pew.add(b);
  }
}