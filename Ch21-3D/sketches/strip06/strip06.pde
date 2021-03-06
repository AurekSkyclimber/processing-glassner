float ax = 200;  float ay = 320;
float bx =  80;  float by = 160;
float cx = 220;  float cy = 200;
float dx = 300;  float dy =  40;
float ex = 380;  float ey = 200;
float fx = 520;  float fy = 160;
float gx = 400;  float gy = 320;
float hx = 300;  float hy = 320;

void setup() {
   size(600, 400);
   background(222, 217, 177);
   fill(131, 209, 119);
   strokeWeight(3);
   strokeJoin(ROUND);
   smooth();
   drawLeaf();
}

void drawLeaf() {
   beginShape(QUAD_STRIP);
   vertex(ax, ay);
   vertex(bx, by); 
   vertex(hx, hy);
   vertex(cx, cy);
   vertex(ex, ey);
   vertex(dx, dy);
   vertex(gx, gy);
   vertex(fx, fy);
   endShape(CLOSE);
}
