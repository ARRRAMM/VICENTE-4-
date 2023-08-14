void setup() {
  size(800, 600);
  background(255);
}

void draw() {
  // No se necesita nada en el bucle draw() para este ejemplo
}

void keyPressed() {
  if (key == '1') {
    drawRandomLines();
  } else if (key == '2') {
    drawRandomCircles();
  } else if (key == '3') {
    background(255);
  }
}

void drawRandomLines() {
  for (int i = 0; i < 100; i++) {
    float x1 = random(width);
    float y1 = random(height);
    float x2 = random(width);
    float y2 = random(height);
    stroke(random(255), random(255), random(255));
    line(x1, y1, x2, y2);
  }
}

void drawRandomCircles() {
  for (int i = 0; i < 100; i++) {
    float x = random(width);
    float y = random(height);
    float diameter = random(10, 100);
    fill(random(255), random(255), random(255));
    ellipse(x, y, diameter, diameter);
  }
}
