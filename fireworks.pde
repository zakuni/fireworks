Fireworks f1 = new Fireworks();
Fireworks f2 = new Fireworks();

void setup(){
  size(250, 300);
  frameRate(30);
  background(10, 10, 70);
  fill(255, 255, 0, 255);
}

void draw(){
  background(10, 10, 70);
  f1.setOff();
  f2.setOff();
}

class Fireworks{
  int X = random(width);
  int Y = height;
  int speed = random(1, 5);
  int reach = random(height);
  int size = random(200, 300);
  int s = 0;

  public void setOff(){
    fill(random(50, 230), random(50, 230), random(50, 230), 255);

    if(Y < reach){
      explode();
      return;
    }

    ellipse(X, Y, 10, 10);
    Y -= speed;
  }

  private void explode(){
    if(s < size){
      ellipse(X, Y, s, s);
      s+=15;
      return;
    }
      s = 0;
      Y = height;
      X = random(width);
      reach = random(height * 5/4);
      size = random(200, 300);
  }
}
