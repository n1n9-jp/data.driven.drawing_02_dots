color c;
float xpos;
float ypos;
float xspeed;

void setup() {
  size(200, 200);
  c = color(255);
  xpos = width/2;
  ypos = height/2;
  xspeed = 1;
}

void draw() {
   background(255);
   xpos = xpos + xspeed;
   if( xpos>width ) {
       xpos = 0;
   }
   rectMode(CENTER);
   fill(c);
   rect(xpos, ypos, 20, 10);
   ellipse(xpos-6, ypos+8, 4, 4);
   ellipse(xpos+6, ypos+8, 4, 4);
}