PImage play, exit;
int pX = 20, pY = 20;
int eX = 100, eY = 20;

void setup(){ //setting up game, loading music, sprites and fonts in
     background(255, 255, 255);
   //new SetUp();
   play = loadImage("play.png");
   exit = loadImage("exit.png");
}

public void settings() {
  size(600, 700);
}

// Test if the cursor is over the box
public boolean collide(PImage img, int x, int y) {
  if (mouseX >= x && mouseX <= x+img.width && mouseY >= y && mouseY <= y+img.height)
    return true;
  else
    return false;
}

void draw(){
  image(play, 20, 20);
  
  if (collide(play, pX, pY))
    tint(150);
  else
    tint(255);
    
  image(exit, 500, 20);
   
   if (collide(exit, eX, eY))
      tint(150);
    else
      tint(255);
}
