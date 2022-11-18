//create player
Player player1;

Map test;

void setup(){
  
  PFont score;
  createFont("montserrat", 128);
  
  size(800, 600);
  player1 = new Player(0, 0, 80, 0, 0);
  test = new Map();

}

void draw(){ 
    background(black);
 
    test.display();
    
    //player1.move();
    //player1.display();

  
}

void keyPressed(){

}
