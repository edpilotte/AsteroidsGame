class Spaceship extends Floater  
{   
    public Spaceship() {
      corners = 15;
      xCorners = new int[]{-12,-8,-4,-4,0,4,14,18,14,4,0,-4,-4,-8,-12};
      yCorners = new int[]{-8,-3,-3,-16,-16,-3,-2,0,2,3,16,16,3,3,8};
      myCenterX = 300;
      myCenterY = 300;
      myColor = color(255);
      myXspeed = 0;
      myYspeed = 0;
      myPointDirection = 0;
    }
    public double getX() {
      return myCenterX;
    }
    public double getY() {
      return myCenterY;
    }
    public void limit() {
      if(myXspeed > 4){
        myXspeed = 4;
      }
      if(myYspeed > 4){
        myYspeed = 4;
      }
      if(myXspeed < -4){
        myXspeed = -4;
      }
      if(myYspeed < -4){
        myYspeed = -4;
      }
    }
    public void hyperspace() {
      myXspeed = 0;
      myYspeed = 0;
      myCenterX = (int)(Math.random()*600);
      myCenterY = (int)(Math.random()*600);
      myPointDirection = (int)(Math.random()*360);
    }
}
