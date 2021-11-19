class Star //note that this class does NOT extend Floater
{
  int myX, myY;
  Star() {
    myX = (int)(Math.random()*600);
    myY = (int)(Math.random()*600);
  }
  void show() {
    fill(255);
    ellipse(myX, myY, 2, 2);
  }
}
