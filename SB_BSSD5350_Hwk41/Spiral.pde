class Spiral {
  int radius = 100;
  
  Spiral(int _radius) {
    radius = _radius;
  }
  
  void show(int fc) {
    background(255);
    
    translate(width/2, height/2, 0);
    rotateY(fc * 0.03);
    rotateX(fc * 0.04);
    
    float s = 0;
    float t = 0;
    float lastx = 0;
    float lasty = 0;
    float lastz = 0;
    
    while(t<180) {
      s += 18;
      t += 1;
      
      float radianS = radians(s) + noise(s, t);
      float radianT = radians(t) + noise(t, s);
      
      float thisx = 0 + (radius * cos(radianS) * sin(radianT));
      float thisy = 0 + (radius * sin(radianS) * sin(radianT));
      float thisz = 0 + (radius * cos(radianT));
      
      if (lastx != 0 ) {
        line(thisx, thisy, thisz, lastx, lasty, lastz);
      }
      lastx = thisx;
      lasty = thisy;
      lastz = thisz;
    }    
  }
}
