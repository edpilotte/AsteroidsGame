class Asteroid extends Floater {
  private double rotSpeed;
  public Asteroid() {
    corners = 6;
    xCorners = new int[]{-11,7,13,6,-11,-5};
    yCorners = new int[]{-8,-8,0,10,8,0};
    myCenterX = (int)(Math.random()*580)+10;
    myCenterY = (int)(Math.random()*580)+10;
    myColor = color(255);
    myXspeed = (int)(Math.random()*5)-2;
    myYspeed = (int)(Math.random()*5)-2;
    myPointDirection = 0;
    rotSpeed = (int)(Math.random()*3)-1;
  }
  public double getX() {
    return myCenterX;
  }
  public double getY() {
    return myCenterY;
  }
  public void move() {
    turn(rotSpeed);
    super.move();
  }
}
