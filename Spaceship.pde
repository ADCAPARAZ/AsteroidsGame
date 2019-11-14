class Spaceship extends Floater  
{   
    public Spaceship() {
    	corners = 3;
    	xCorners = new int[]{-8,16,-8};
    	yCorners = new int[]{-8,0,8};
    	myCenterX = 250;
    	myCenterY = 250;
    }
    public void setDirectionX(double x){
    	myDirectionX = x;
    }
}
