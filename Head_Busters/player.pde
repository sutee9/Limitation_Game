class Player {
  float x;
  float y;
  float size; //player diameter
  int status; //safe or not safe
  int id; //which player

  //playerball
  int pSize = 40;

  //player safety
  boolean isSafe = false;


  //collision variables
  float zRadius; //radius of the main ellipse

  //x and y coordinates of the safe zone //TODO: REMOVE THESE!!!!
  int zoneX;
  int zoneY;
  int zoneSize;



  //assing incoming to local variables
  Player(float x, float y, float size, int status, int id) {

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
  
  //Check if player is in the safe zone
  boolean isSafe (Map level){
    boolean isSafe = false;
    //Allerlei dinge prüfen (level.zoneX ....)
    return isSafe;
    //frage beantworten
    
  }

  //draw the player
  void display() {

    //calculate necessary variables for collision
    //calculate distance between player and zone (1)
    float zDist = dist(mouseX, mouseY, zoneX, zoneY);

    //calculate the new safe distance based on both radius (2)
    float playerDist = zDist + pSize/2;

    //if the zone radius is larger than the distance from the player
    if (zoneSize/2 > playerDist) { //*note swap with zDist to make it easier
      isSafe = true;
      println("safe");
    } else {
      isSafe = false;
      println("danger");
    }

    //debug line
    stroke(sky);
    strokeWeight(3);
    line(mouseX, mouseY, zoneX, zoneY);

    fill(honey);
    circle(x, y, size);
  }
}
