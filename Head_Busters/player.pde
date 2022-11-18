class Player {
  float x;
  float y;
  float size; //player diameter
  int status; //safe or not safe
  int id; //which player
  
  
  //assing incoming to local variables
  Player(float x, float y, float size, int status, int id){
    
    //assign variables to use later on
    this.x = x;
    this.y = y;
    this.size = size;
    this.status = status;
    this.id = id;
  }
  
  //move player according to sampled colors
  void move() {
    
    x = mouseX;
    y = mouseY;
    
  }
  
  //draw the player
  void display(){
    
    fill(honey);
    circle(x, y, size);
    
  }
  
  
}
