class Bullet extends Floater
{
	public Bullet()
	{
		myCenterX = 250;
		myCenterY = 250;
		double dRadians = myPointDirection*(Math.PI/180);
		myPointDirection = 0;
		myDirectionX = 5 * Math.cos(dRadians) + bob.myDirectionX;
		myDirectionY = 5 * Math.sin(dRadians) + bob.myDirectionY;
		myColor = color(0,0,255);
	}
	public void show(){
		ellipse((int)myCenterX,(int)myCenterY,7,7);
		fill(255,0,0);
		stroke(255,0,0);
	}
}