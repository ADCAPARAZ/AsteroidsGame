class Spaceship extends Floater  
{   
    public Spaceship() {
    	corners = 3;
    	xCorners = new int[]{-8,16,-8};
    	yCorners = new int[]{-8,0,8};
    	myCenterX = 250;
    	myCenterY = 250;
      myColor = color(0,255,0);
      myDirectionX = 0;
      myDirectionY = 0;
      myPointDirection = 0;
    }
    public void setDirectionX(double x){
    	myDirectionX = x;
    }
}
