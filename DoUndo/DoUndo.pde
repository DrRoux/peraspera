float num;
int backgroundColor = 0;
boolean doOnce = true;
 
void setup() {
  size(640, 640);
  stroke(0, 150, 255);
}
 
void draw() {
  fill(255, 10);
  rect(0,0,width,height);
   
  float maxX = (float)100;
  float maxY = (float)100;
  
 
  translate(width/2, height/2);
  for (int i = 0; i < 360; i+=45) {
    float x1 =   maxX*sin(num/10);
    float y1 =   maxY/sin(num/10);
 
    float x2 = (50) + maxX;
    float y2 = (50)+ maxY;
 
    pushMatrix();
    //translate(x1, y1);
    rotate(radians(i+num));
    
    stroke(75);
    bezier(0, y1, x2, y2, x1, y1, x2/2, y2/2);
    
    stroke(150);
    bezier(0, y1-50, x2-50, y2-50, x1, y1, x2*2, y2*2);
    
    
    
    stroke(0);
    bezier(0, y1+51, x2+51, y2+51, x1, y1, x2, y2);
    
    scale(-1, 1);
    
    stroke(75);
    bezier(0, y1, x2, y2, x1, y1, x2/2, y2/2);
    
    stroke(150);
    bezier(0, y1-50, x2-50, y2-50, x1, y1, x2*2, y2*2);
    
    
    stroke(0);
    bezier(0, y1+51, x2+51, y2+51, x1, y1, x2, y2);
    
    popMatrix();
  }
  num -= 0.1;
}
 
