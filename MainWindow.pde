float r;
float theta;
Mover m;

void setup() {
  size(800,800);
  surface.setResizable(true);
  r = height * 0.45;
  theta = 0;
  m = new Mover(); 
}

void draw() { 
  background(233);    
  translate(width/2, height/2); 
  float x = r * cos(theta);
  float y = r * sin(theta);
  ellipseMode(CENTER);
  fill(222);
  stroke(0);
  strokeWeight(2);
  line(0,0,x,y);
  ellipse(x, y, 48, 48); 
  theta += 0.02;
  
  PVector wind = new PVector(0.0,0);
  PVector gravity = new PVector(0,0.1);
  m.applyForce(wind);
  m.applyForce(gravity);
  m.update();
  m.display();
  m.checkEdges();
  
}