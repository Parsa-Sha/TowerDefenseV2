//Some towers shoot bullets! If a mob is hit by a bullet,
//it does damage.

class Bullet {
  float x, y, vx, vy;
  
  Bullet (float X, float Y, float VX, float VY) {
    x = X;
    y = Y;
    vx = VX;
    vy = VY;
  }
  
  void show() {
    x += vx;
    y += vy;
    strokeWeight(0);
    fill(0, 100, 200);
    circle(x, y, 15);
  }
}
