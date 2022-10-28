//This function draws the PLAY screen

float timer = 0;

void play() {
  background(0, 255, 0);
  image(bg[difficulty], width/2, height/2);
  makePath();
  
  if (lives <= 0) mode = GAMEOVER;
  if (timer >= 60) {
    mobs.add(new Mob(50, 1, 1));
    timer = 0;
  } else timer++;
  
  
  for (int i = 0; i < mobs.size(); i++) mobs.get(i).act();
  
  image(hpimg[lives], 850, 50);
  
}
