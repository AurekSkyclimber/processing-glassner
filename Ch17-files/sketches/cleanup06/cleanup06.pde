String [] Lines;

void setup() {
  size(1600,630);
  background(255);
  stroke(0);
  strokeWeight(2);
  Lines = loadStrings("../Body-ManPoints.txt");
  showCurve();
}

void showCurve() {
  int ox, oy, x, y;
  ox = oy = x = y = 0;
  for (int i=0; i<=Lines.length; i++) {
    String[] words = split(Lines[i%Lines.length], '\t');
    x = int(words[0]);
    y = int(words[1]);
    if (i>0) {
      line(ox, oy, x, y);
      float radius = 3;
      if (i%10 == 0) radius = 6;
      ellipse(x, y, radius, radius);
    }
    if (i%10 == 0) {
      stroke(color(random(50, 200), random(50, 200), random(50, 200)));
    }
    ox = x;
    oy = y;
  }
}
