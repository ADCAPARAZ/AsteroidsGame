class Bullet extends Floater
{
	public Bullet()
	{
		myCenterX = bob.myCenterX;
		myCenterY = bob.myCenterY;
		myPointDirection = bob.myPointDirection;
		myDirectionX = bob.myDirectionX;
		myDirectionY = bob.myDirectionY;
		myColor = color(0,0,255);
		accelerate(6);
	}
	public void show(){
		ellipse((int)myCenterX,(int)myCenterY,7,7);
		fill(255,0,0);
		stroke(255,0,0);
	}
}