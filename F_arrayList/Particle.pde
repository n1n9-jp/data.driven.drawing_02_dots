/*
  Particle
  for primitive shape or external shape
*/

class Particle {

  PVector location;
  PShape e1;
  float size;
  int colorNum;

  Particle(PVector _l, float _size, int _color) {
    location = _l.get();
    size = map(_size, 0, 5000, 0, 40);
    colorNum = _color;
    //draw particle:svg file
    //e1 = loadShape("star.svg");
    //e1.disableStyle();
  }

  void run(float _m) {
    display(_m);
  }

  void display(float _m) {
    
    //style
    noStroke();
    fill( cm.getColor(colorNum) );
    
    //draw particle:ellipse
    ellipse(location.x, location.y, size*_m, size*_m);

    //draw particle:svg file
    //shapeMode(CENTER);
    //shape(e1, location.x, location.y, size*_m, size*_m);
  }
}