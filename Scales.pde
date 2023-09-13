void setup() 
{
  size(500, 500);
  noLoop();
}

void draw() {
background(255, 255, 255); //skin of the dragon(?)
  for (int y = -500; y <= 500; y += 40) { //the y outer loop
    for (int x = -500; x <= 500; x += 50) {
    
      scales(x, y);
    }
  }
}

void scales(int x, int y) {
  noStroke();
fill(231, 84, 128, 180);
//if 200 -> something lower it will be more transparent
  bezier(x+20, y+20, x+10, y+25, 50 + x, 140 + y, 100 + x, 50 + y);
fill(255, 182, 193, 150); 
//more transparent layer
  bezier(x+20, y+20, x+100, y+100, x+50, y+140, x+10, y+25); //bezier curve (edit later to make less pointy?)
  
}


