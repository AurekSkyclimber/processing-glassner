float Redval = 192; // background red
float Grnval = 64;  // background green
float Bluval = 0;   // background blue
color MyColor;

void setup() {
   size(600, 400);
   MyColor = color(Redval, Grnval, Bluval);
   background(MyColor);
}

void draw() {
   background(MyColor);
}

void mouseMoved() {
   Redval = map(mouseX, 0, 599, 0, 255);
   Grnval = map(mouseY, 0, 399, 0, 255);
   MyColor = color(Redval, Grnval, Bluval);
}

void mouseDragged() {
   Bluval = map(mouseX, 0, 599, 0, 255);
   MyColor = color(Redval, Grnval, Bluval);
}

void mouseClicked() {
   Bluval = map(mouseX, 0, 599, 0, 255);
   MyColor = color(Redval, Grnval, Bluval);
}
