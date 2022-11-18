//create player
Player player1;

void setup(){
  size(800, 600);

  player1 = new Player(0, 0, 80, 0, 0);
  
  
}

void draw(){
    background(black);
    
    player1.move();
    player1.display();

  
}

void keyPressed(){

}
