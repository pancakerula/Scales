void setup() {
  size(500, 500);  //feel free to change the size
  noLoop(); //stops the draw() function from repeating
}
void draw() {
  //scale(250, 250);


  for(int i = 30; i < width; i+= width/10){
    for(int k = height - 39; k > 10; k -= height/10){
      scale(i, k);
    }
  }
 
 // colorGuide();
}

void colorGuide(){
  stroke(0, 0, 0);
  //bezier(250 + 30, 250 - 10, 250 + 40, 250 + 20, 250 + 40, 250 + 20,          250, 250 + 60);
  fill(255, 0, 0); // red
  ellipse(250, 250, 10, 10); 
  fill(255, 200, 0); // orange
  ellipse(250, 250 + 60, 10, 10);
  fill(255, 255, 0); // yellow
  ellipse(250 + 40, 250 + 20, 10, 10);
  fill(0, 255, 0); // green
  ellipse(250 - 40, 250 + 20, 10, 10);
  fill(0, 255, 255); // turquoise
  ellipse(250 + 30, 250 - 10, 10, 10);
  fill(255, 0, 255); // magenta
  ellipse(250 - 30, 250 - 10, 10, 10);
}
void scale(int x, int y) {

  //bezier(x - 50, y, x - 30, y + 90, x + 30, y + 90, x + 50, y);
  //bezier(x - 50, y, x - 30, y + 90, x + 30, y + 90, x + 50, y);
  
  //bezier(x, y + 60 + 60, x + (30/4)*1, y + (60/4)*1, x + (30/4)*2, y + (60/4)*2, x + 30, y - 30); 
  
  
  // RIGHT SIDE
  int localx;
  int localy; 
  int r;
  int g;
  int b;
  int pullX;
  int pullY;
  noFill();
  r = 255;
  g = 255;
  b = 255;
  // right most side
  for(localx = x + (40/2); localx <= x + (40); localx++){ // x axis direction
      for(localy = y + (20/2); localy <= y + (20); localy++){  // y axis direction
          r-=1;
          b--;
          stroke(r, g, b);
          pullX = localx;
          pullY = localy;
          bezier(x + 30, y - 10, pullX, pullY, pullX, pullY, x, y + 60);
        
      }
  }

  // left most side
  r = 255;
  g = 255;
  b = 255;
  for(localx = x - (40/2); localx >= x - (40); localx--){ // x axis direction
      for(localy = y + (20/2); localy <= y + (20); localy++){  // y axis direction
          r--;
         
          stroke(r, g, b);
          pullX = localx;
          pullY = localy;
          bezier(x - 30, y - 10, pullX, pullY, pullX, pullY, x, y + 60);
        
      }
  }
  
  fill(255, 255, 255);
  noStroke();
  triangle(x - 30, y - 10,    x + 30, y - 10,     x, y + 60);
  noFill();
 
}
