class Car {

    color c;
    float xpos;
    float ypos;
    float xspeed;

    Car() {
      c = color(255);
      xpos = width/2;
      ypos = height/2;
      xspeed = 1;
    }

    void move() {
       xpos = xpos + xspeed;
       if( xpos>width ) {
           xpos = 0;
       }
    }
        
    void display() {
      rectMode(CENTER);
      fill(c);
      rect(xpos, ypos, 20, 10);
      ellipse(xpos-6, ypos+8, 4, 4);
      ellipse(xpos+6, ypos+8, 4, 4);
    }

}