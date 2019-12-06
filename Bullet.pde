class Bullet extends Floater
{
	public Bullet()
	{
		myCenterX = 250;
		myCenterY = 250;
		double dRadians = myPointDirection*(Math.PI/180);
		myPointDirection = 0;
		double myDirectionX = (5 * Math.cos(dRadians) + bob.myDirextionX);
		double myDirectionY = 5 * Math.sin(dRadians) + bob.myDirectionY;
	}
	public void show(){
		super.show();
	}
}