int wBar = 30;
int lastBar = 1;
void setup() 
{
 colorMode(HSB, height, height, height); 
  size(500, 500);
  background(0);
}

void draw() {
//background(255, 255, 255); //skin of the dragon(?)
  for (int y = -500; y <= 500; y += 40) { //the y outer loop
    for (int x = -500; x <= 500; x += 50) {
    
      scales(x, y);
    } }

  }


void scales(int x, int y) {
  strokeWeight(2);
fill(30, 50, 90, 20);
//more transparent layer
  bezier(x+20, y+20, x+100, y+100, x+50, y+140, x+10, y+25); //bezier curve (edit later to make less pointy?)

//if 200 -> something lower it will be more transparent
 //bezier(x+20, y+20, x+10, y+25, x+50, y+140, x+100, y+50);



  noStroke();
  int barOne = mouseX / wBar;
  if (barOne != lastBar) {
    int barX = barOne * wBar;
    
    
    
    fill(mouseY, height, height);
    rect(barX, 0, 100, height);
    lastBar = barOne; }
  
}




