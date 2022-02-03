int radius = 100;
Spiral sp1 = new Spiral(100);

void setup() {
 size(500, 500, P3D); //size of canvas
 smooth(); //smooths animation frame transition
 background(255);
 frameRate(24);
 stroke(0);
 //noLoop(); //only calls draw one time
}

int count = 0;
void draw() {
  background(255);
  
  sp1.show(count++);
  }    
 