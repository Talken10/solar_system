class Planet
{
 float size = 20; //Planet size
 float dist = 100; //Planet distance from the sun
 float angle = 0; //Planet starting angle
 float speed = 1.0; // speed
 color col = color (0,255,255,255); // color
 Planet [] moons = new Planet[20];//moons
 int nMoons = 0;
 
 Planet(float _size, float _dist)
 {
   this.size = _size;
   this.dist = _dist;
 }
 
 //show planet on the screen
void show()
{
  pushMatrix();
    rotate(radians(this.angle));
    translate(this.dist,0);
    noStroke();
    fill(this.col);
    circle (0,0,this.size);
    this.angle = this.angle+this.speed;
    
    for (int i = 0; i < this.nMoons; i = i + 1)
    {
      this.moons[i].show();
    }
   popMatrix(); 
} 
  
  void randomize()
  {
  this.size = random(10,50); //planet size
  this.dist = random(80,400); //distance from the sun
  this.angle = random (360); //starting angle
  this.speed = random (2.5,3); //speed of planets
 // float gray =255-map(this.size,0.0,100,0.0,155.00);
  this.col = color(random(255),random(50),random(255),5); //color
  }
  
  void createMoons()
  {
    this.nMoons = floor(random(4));
    for (int i = 0; i < this.nMoons; i = i + 1)
   {
    moons[i]=new Planet(random(10,60),random(100,400));
    moons[i].randomize(); 
    }
  }
}
