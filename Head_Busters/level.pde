class Map{
  
//collision variables
float zRadius; //radius of the main ellipse

//x and y coordinates of the safe zone
int zoneX;
int zoneY;
int zoneSize;

//playerball
int pSize = 40;

//player safety
boolean isSafe = false;  
  
  
  
void display(){
  
    //zone
  fill(white);
  noStroke();
  circle(zoneX, zoneY, zoneSize);
  
  //cursor
  noStroke();
  fill( (isSafe) ? mint : crimson);
  circle(mouseX, mouseY, pSize);
  
  
  //calculate necessary variables for collision
  //calculate distance between player and zone (1)
  float zDist = dist(mouseX, mouseY, zoneX, zoneY);
  
  //calculate the new safe distance based on both radius (2)
  float playerDist = zDist + pSize/2;
  
  //if the zone radius is larger than the distance from the player
  if (zoneSize/2 > playerDist){ //*note swap with zDist to make it easier
    isSafe = true;
    //println("safe");
  } else {
    isSafe = false;
    //println("danger");
  }
  
  //debug line
  stroke(sky);
  strokeWeight(3);
  line(mouseX, mouseY, zoneX, zoneY);
  
  if (keyPressed){
  //randomize size
  zoneSize = int(random(150, 400));
  
  //first randomize in order to offset from the edge
  
  //randomize location of safe zone
  zoneX = int(random(0 + zoneSize/2,width - zoneSize/2));
  zoneY = int(random(0 + zoneSize/2, height - zoneSize/2));
  }
  
  
}
  
  
}
