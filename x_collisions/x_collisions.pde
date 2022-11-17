//colors
color black = color(12, 12, 12);
color white = color(250, 250, 250);
color mint = color(78, 209, 160);
color sky = color(87, 126, 232);

//collision variables
float eRadius; //radius of the main ellipse
float eDist; // distance between the player and the main ellipse

//x and y coordinates of the safe zone
int zoneX;
int zoneY;
int zoneSize;

void setup() {
  size(800, 600);
  
}

void draw() {
  
  background(12);
  
  fill(white);
  circle(zoneX, zoneY, zoneSize);
}

void keyPressed(){
  
  //randomize size
  zoneSize = int(random(50, 150));
  
  //first randomize in order to offset from the edge
  
  //randomize location of safe zone
  zoneX = int(random(0 + zoneSize/2,width - zoneSize/2));
  zoneY = int(random(0 + zoneSize/2, height - zoneSize/2));
  
}
