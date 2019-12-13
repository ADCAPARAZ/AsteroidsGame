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
	public void move(){
    //change the x and y coordinates by myDirectionX and myDirectionY       
    myCenterX += myDirectionX;    
    myCenterY += myDirectionY;     

    //wrap around screen    
    if(myCenterX > width)
    {     
      for(int i = 0; i < pew.size(); i++){
      	pew.remove(i);
      }    
    }    
    else if (myCenterX<0)
    {     
      for(int i = 0; i < pew.size(); i++){
      	pew.remove(i);
      }        
    }    
    if(myCenterY >height)
    {    
      for(int i = 0; i < pew.size(); i++){
      	pew.remove(i);
      }     
    } 
    
    else if (myCenterY < 0)
    	{     
      		for(int i = 0; i < pew.size(); i++){
      			pew.remove(i);
      		}     
    	}   
	}

	public int getX(){
		return (int) myCenterX;
	}

	public int getY(){
		return (int) myCenterY;
	}
}