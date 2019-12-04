class Asteroid extends Floater
{
	private int mySpeedRotation;
	public Asteroid()
	{
		mySpeedRotation = (int)(Math.random() - 2) * 4;
		corners = 6;
    	xCorners = new int[]{-11,7,13,6,-11,-5};
    	yCorners = new int[]{-8,-8,0,10,8,0};
    	myCenterX = (int)(Math.random() * 500);
    	myCenterY = (int) (Math.random() * 500);
      	myColor = color(0,0,255);
      	myDirectionX = (Math.random() - 1) * 2;
      	myDirectionY = (Math.random() - 1) * 2;
      	myPointDirection = 0;
	}
	public void move(){
		super.move();
		turn(mySpeedRotation);
	}
}