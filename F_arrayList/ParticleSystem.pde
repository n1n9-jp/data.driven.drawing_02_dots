/*
  Particle System for animation
  
*/

class ParticleSystem {

  ArrayList<Particle> particles;

  ParticleSystem(int _amount) {
    
     particles = new ArrayList<Particle>();
     float _a = 360 / _amount;
 
     for (int i = 0; i<_amount; i++) {
       float ang = i*_a;
       
       //location
       float _r = radians(ang);
       float _x = width/2 + (radius * cos(_r));
       float _y = height/2 + (radius * sin(_r));
       PVector _p = new PVector(_x, _y);
       
       //size
       float _size = dm.getR(i);

       //size
       int _color = dm.getColor(i);
       
       //make instances
       particles.add(new Particle(_p, _size, _color));
     }  
  }

  void runParticle() {

    for (int i = particles.size()-1; i >= 0; i--) {
        Particle p = particles.get(i);
        float _m = bandwidth[i];
        p.run(_m);
    }

    fadeInEffect();
  }
}

void fadeInEffect(){
    noStroke();
    fill(0, 0, 100, 10);
    rectMode(CORNER);
    rect(0, 0, width, height);
}