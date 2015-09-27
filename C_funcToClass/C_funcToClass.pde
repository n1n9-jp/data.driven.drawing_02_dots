Car myCar;

void setup() {
   size(200, 200);
   myCar = new Car(); 
}

void draw() {
   background(255);
   myCar.move();
   myCar.display();
}