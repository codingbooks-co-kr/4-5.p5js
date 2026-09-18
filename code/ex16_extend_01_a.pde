// 자바 기반 프로세싱의 본문 코드

Shape[] sh = new Shape[3];

void setup() {
  size(500, 300);
  sh[0] = new Circle(100, 100, 50);
  sh[1] = new Square(200, 150, 50);
  sh[2] = new Triangle(400, 200, 50);
}

void draw() {
  background(0);
  for (int i = 0; i < sh.length; i++) {
    sh[i].display();      // 오버라이딩
  }
}

// 클래스 코드
class Shape {
  float x, y, d;

  Shape(float x, float y, float d) {
    this.x = x;
    this.y = y;
    this.d = d;
  }

  void display() {
    textSize(d);
    text("Shape", x, y);
  }
}

class Circle extends Shape {
  Circle(float x, float y, float d) {
    super(x, y, d);
  }

  void display() {
    fill(255, 0, 0);
    ellipse(x, y, d, d);
  }
}

class Square extends Shape {
  Square(float x, float y, float d) {
    super(x, y, d);
  }

  void display() {
    fill(0, 255, 0);
    rect(x, y, d, d);
  }
}

class Triangle extends Shape {
  Triangle(float x, float y, float d) {
    super(x, y, d);
  }

  void display() {
    fill(0, 0, 255);
    triangle(x, y, x-d, y+d, x+d, y+d);
  }
}
