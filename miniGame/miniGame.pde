int stateofgame;
float rectx, recty, playerx, playery;
String menu;
float speed = 0;
float gravity = 0.75;































void setup(){
  stateofgame = 0;
  rectx = 100;
  recty = 450;
  menu = "Eyo bitch you wan summa dis?";
  playerx = 100;
  playery = 100;
  size(800, 800);
}



























void draw(){
  //println(stateofgame);
  runmenu(); 
  rungame();
}





















void runmenu(){
  if (stateofgame == 0){
    background(50);
    ellipse(random(width), random(height), random(50, 100), random(50, 100));
    ellipse(random(width), random(height), random(50, 100), random(50, 100));
    ellipse(random(width), random(height), random(50, 100), random(50, 100));
    ellipse(random(width), random(height), random(50, 100), random(50, 100));
    ellipse(random(width), random(height), random(50, 100), random(50, 100));
    rect(rectx, recty, 600, 100);
    textSize(42);
    text(menu, 150, 350);
    buttonpressing();
  }
}



void buttonpressing(){
  if (stateofgame == 0){
    if ((mouseX > rectx) && (mouseX < 700) && (mouseY > recty) && (mouseY < 550)){
      if (mousePressed == true){
        stateofgame = 1;
      }
    }
  }
}



void rungame(){
  if (stateofgame == 1){
    background(40, 240, 255);
    ellipseMode(CENTER);
    fill(255, 255, 40);
    ellipse(0, 0, 150, 150);
    fill(135, 60, 0);
    noStroke();
    rect(0, 700, width, 100);
    fill(255);
    rect(playerx, playery, 100, 100);
    //jump();
  }
}
    
    
//void jump(){
//  if ((key == 'm') || (key == 'M')){
//    playery = playery + speed;
//    speed = speed + gravity;
//    if (playery > height - 100){
//    //  speed = speed * -0.95;
//      playery = playery - speed;
//      speed = speed - gravity;
//    }
//  }
//}
    
void makeenemies(){
}