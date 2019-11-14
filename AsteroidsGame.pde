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
  bob.show();
  System.out.println(bob.myCenterX);
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
}
