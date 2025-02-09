Spaceship ship;
Star[] starfield = new Star[60];
ArrayList <Asteroid> rockfield = new ArrayList <Asteroid>();

public void setup() 
{
  size(600,600);
  background(0);
  ship = new Spaceship();
  for(int i = 0; i < starfield.length; i++) {
    starfield[i] = new Star();
  }
  for(int i = 0; i < 10; i++) {
    rockfield.add(new Asteroid());
  }
}
public void draw()
{
  background(0);
  ship.show();
  ship.move();
  if(keyPressed) {
    ship.limit();
    if(key == 'w') {
      ship.accelerate(0.5);
    }
    if(key == 's') {
      ship.accelerate(-0.5);
    }
    if(key == 'd') {
      ship.turn(10);
    }
    if(key == 'a') {
      ship.turn(-10);
    }
    if(key == 'q') {
      ship.hyperspace();
    }
  }
  for(int i = 0; i < starfield.length; i++) {
    starfield[i].show();
  }
  for(int i = 0; i < rockfield.size(); i++) {
    rockfield.get(i).move();
    rockfield.get(i).show();
    float distance = dist((float)ship.getX(), (float)ship.getY(), (float)rockfield.get(i).getX(), (float)rockfield.get(i).getY());
    if(distance < 10) {
      rockfield.remove(i);
    }
  }
}
