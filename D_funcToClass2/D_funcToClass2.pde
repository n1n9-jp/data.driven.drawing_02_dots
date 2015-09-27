Car myCar1;
Car myCar2;

void setup() {
   size(200, 200);
   myCar1 = new Car( color(80), 0, 100, 2 ); 
   myCar2 = new Car( color(200), 0, 10, 1 );
}

void draw() {
   background(255);
   
   myCar1.move();
   myCar1.display();
   
   myCar2.move();
   myCar2.display();
}