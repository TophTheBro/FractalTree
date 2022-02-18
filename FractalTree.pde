int limit = 15;
public void setup() {
  size(600, 600);
}

public void draw() {
  background(0, 0, 0);
  tendron(300, 300, 250);
  noLoop();
}

public void tendron(int x, int y, int size) {
  int startX = 0;
  int startY = 0;
  int endX = 0;
  int endY = 0;
  if (size >= limit) {  
    translate(x, y);
    fill(0, 222, 75);
    strokeWeight(2);
    stroke((int)(Math.random()*256), (int)(Math.random()*256), (int)(Math.random()*256));
    for (int i = 0; i < 7; i++) {
      rotate((float)(i * 2 * Math.PI / 7));
      while (startY >= -size) {
        endX = startX + (int)(Math.random()*(size/4)) - size / 8;
        endY = startY - (int)(Math.random()* (size / 8));
        line(startX, startY, endX, endY);
        startX = endX;
        startY = endY;
      }
      tendron(endX, endY, size / 3);
      rotate((float)(-i * 2 * Math.PI / 7));
      startX = 0;
      startY = 0;
    }
    translate(-x, -y);
  } else {
  }
}

public void mousePressed(){
  loop();
}
