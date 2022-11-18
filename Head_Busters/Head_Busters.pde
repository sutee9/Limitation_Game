//create player
Player player1;

Map level;

void setup() {

  /* PFont score;
   createFont("montserrat", 128); */

  size(800, 600);
  player1 = new Player(0, 0, 80, 0, 0);
  level = new Map();
}

void draw() {
  //all Status aktualisieren

  //1. Verstehen wo die Players sind
  player1.move();
  //2. Verstehen wo der Ausschnitt ist
  //bleibt immer gleich
  //3. Timer updaten
  //4. Falls Timer abgelaufen: Prüfen ob Spieler safe ist: Dafür brauche ich Zone und Player;
  if (player1.isSafe(level)   ) {
    //a. Fall safe:
    //1. Irgendeine "YAY"!
    //   Hier noch screenshot machen vielleicht.
    //2. warten
    //3. Map neu generieren
    //2. Timer neu Setzen
  } else {
    //b. Fall nicht safe:
    //Allerlei Karsumpel prüfen ob Spiel weitergeht
  }

  //5. END

  //6. Alles Zeichnen

  //alles Zeichnen
  background(black);
  level.display();
  player1.display();
}
