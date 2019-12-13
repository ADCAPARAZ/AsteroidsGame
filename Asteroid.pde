class Asteroid extends Floater
{
	private int mySpeedRotation;
	public Asteroid()
	{
		mySpeedRotation = (int)((Math.random() * 5) - 2);
		corners = 6;
    	xCorners = new int[]{-11,7,13,6,-11,-5};
    	yCorners = new int[]{-8,-8,0,10,8,0};
    	myCenterX = (int)(Math.random() * 500);
    	myCenterY = (int) (Math.random() * 500);
      	myColor = color(0,0,255);
      	myDirectionX = (Math.random() * 5) - 2;
      	myDirectionY = (Math.random() * 5) -2;
      	myPointDirection = 0;
	}
	public void move(){
    //change the x and y coordinates by myDirectionX and myDirectionY       
    myCenterX += myDirectionX;    
    myCenterY += myDirectionY;     

    //wrap around screen    
    if(myCenterX >width)
    {     
      myCenterX = 0;    
    }    
    else if (myCenterX<0)
    {     
      myCenterX = width;    
    }    
    if(myCenterY >height)
    {    
      myCenterY = 0;    
    } 
    
    else if (myCenterY < 0)
    {     
      myCenterY = height;    
    }   
   }

   public int getX(){
   	return (int) myCenterX;
   }

   public int getY(){
   	return (int) myCenterY;
   }
}