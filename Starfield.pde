Particle [] creeps= new Particle[2000];
//your code here
void setup()
{
  size(500,500);
  background(0);
  for (int i=0; i< creeps.length; i++)
    {
     creeps[i] =new NormalParticle();
     creeps[12] =new OddballParticle();
     creeps[1] =new JumboParticle();
    }
  //your code here
}
void draw(){
  mousePressed();
  background(0);
      for (int i=0; i< creeps.length; i++)
    {
     creeps[i].move();
     creeps[i].show();
    }

}
  //your code here}
class NormalParticle implements Particle
{
  double myX, myY, speed, angle;
  color hue,hue1,hue2;
  NormalParticle()
  {
    myX=250;
    myY=250;
    speed= (Math.random()*10);
    angle= (Math.random()*2*Math.PI);
    hue=(int)(Math.random()*255);
    hue1=(int)(Math.random()*255);
    hue2=(int)(Math.random()*255);
    
  }
  public void move()
  {
    myX=myX+Math.cos((float)angle)*(float)speed;
    myY=myY+Math.sin((float)angle)*(float)speed;
 
  }
  public void show()
  {
    fill(hue,hue1,hue2);
    ellipse((float)myX,(float)myY,3,3);
 
  }
  //your code here
}
interface Particle
{
  public void show();
  public void move();
  //your code here
}
class OddballParticle implements Particle //uses an interface
{
  double myX, myY, speed, angle;
  color hue;
  OddballParticle(){
    myX=250;
    myY=250;
    speed=(Math.random()*10);
    angle=(Math.random()*2*Math.PI);
  }
  public void show()
  {
    fill(hue,220,190);
    ellipse((float)myX,(float)myY,10,20);
  }
  
  public void move()
  {
    myX=myX+((Math.random()*8)-4);
  }
  //your code here
}
class JumboParticle extends NormalParticle  //uses inheritance
{
  void show(){
   fill(242,255,190);
   ellipse((float)myX,(float)myY,30,30);
  }
  //your code here
}
void mousePressed(){
  redraw();
}

