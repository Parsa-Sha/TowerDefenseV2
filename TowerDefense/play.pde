//This function draws the PLAY screen

float timer = 0;
int wave = 0;

void play() {
  background(0, 255, 0);
  image(bg[difficulty], width/2, height/2);
  makePath();
  mobAct();
  
      
  if (lives <= 0) mode = GAMEOVER;
  if (timer >= 60) {
    mobs.add(new Mob(50, 1, difficulty+1));
    timer = 0;
  } else timer++;

  
  
  image(hpimg[lives], 850, 50); // Lives image
  
  strokeWeight(0);
  fill(palette[difficulty][1]);
  rect(width/2, 725, width, 150);
  waveButton.show();
  if (waveButton.press()) wave++;
}

void mobAct() {
  for (int i = 0; i < mobs.size(); i++) {
    exampleMob = mobs.get(i);
    exampleMob.act();
    if (exampleMob.hp == 0) {
      mobs.remove(i);
      i--;
    }
  }
}
