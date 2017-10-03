int stateofgame;
float rectx, recty, playerx, playery;
String menu;
//float speed = 0;
//float gravity = 0.75;
//int seconds = millis();

float variablea = 0.0;//random(0.0, PI*2);
float speed;
 
float radius = 0;
float rmove = +1;
float minRadius = 1, maxRadius = 10;
PImage ted;

void setup(){
  stateofgame = 0;
  rectx = 100;
  recty = 450;
  ted = loadImage("cruz.png");
  menu = "Eyo bitch you wan summa dis?";
  playerx = 100;
  playery = 100;
  size(650, 650);
  frameRate(100);
}

void draw(){
  //println(stateofgame);
  runmenu(); 
  runpicture();
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

void runpicture(){
  fill(0, 50);
 rect(0, 0, width, height);
  imageMode(CENTER);
  image(ted, width/2, height/2, 250, 250);
  dothingr();
  dothingo();
  dothingy();
  dothingg();
  dothingb();
  dothingi();
  dothingv();
}
  
void dothingr(){
  speed = 0.0000001;
  //fill (0, 50);
  noStroke();
 //rect (0, 0, width, height); 
 //background(0, 50);
 
  int radiusofsolarsystem = 200 + 100;
  float asteroidx = width/2 + cos (variablea) * radiusofsolarsystem;
  float asteroidy = height/2 + sin (variablea) * radiusofsolarsystem;
  variablea = variablea + speed;
  fill(255, 0, 0);
 
  ellipse(asteroidx, asteroidy, 10, 10);
  radius += rmove; 
  if (radius > maxRadius)
    rmove = -1;
  else if (radius < minRadius)
    rmove =0.1;
}

void dothingo(){
  speed = 0.0175;
  noStroke();
 
  int radiusofsolarsystem = 175 + 100;
  float asteroidx = width/2 + cos (variablea) * radiusofsolarsystem;
  float asteroidy = height/2 + sin (variablea) * radiusofsolarsystem;
  variablea = variablea + speed;
  fill(255, 175, 0);
 
  ellipse(asteroidx, asteroidy, 10, 10);
  radius += rmove; 
  if (radius > maxRadius)
    rmove = -1;
  else if (radius < minRadius)
    rmove =0.1;
}  

void dothingy(){
  speed = 0.015;
  noStroke();
 
  int radiusofsolarsystem = 150 + 100;
  float asteroidx = width/2 + cos (variablea) * radiusofsolarsystem;
  float asteroidy = height/2 + sin (variablea) * radiusofsolarsystem;
  variablea = variablea + speed;
  fill(255, 255, 0);
 
  ellipse(asteroidx, asteroidy, 10, 10);
  radius += rmove; 
  if (radius > maxRadius)
    rmove = -1;
  else if (radius < minRadius)
    rmove =0.1;
}

void dothingg(){
  speed = 0.0125;
  noStroke();
 
  int radiusofsolarsystem = 125 + 100;
  float asteroidx = width/2 + cos (variablea) * radiusofsolarsystem;
  float asteroidy = height/2 + sin (variablea) * radiusofsolarsystem;
  variablea = variablea + speed;
  fill(0, 255, 0);
 
  ellipse(asteroidx, asteroidy, 10, 10);
  radius += rmove; 
  if (radius > maxRadius)
    rmove = -1;
  else if (radius < minRadius)
    rmove =0.1;
}

void dothingb(){
  speed = 0.01;
  noStroke();
 
  int radiusofsolarsystem = 100 + 100;
  float asteroidx = width/2 + cos (variablea) * radiusofsolarsystem;
  float asteroidy = height/2 + sin (variablea) * radiusofsolarsystem;
  variablea = variablea + speed;
  fill(0, 255, 255);
 
  ellipse(asteroidx, asteroidy, 10, 10);
  radius += rmove; 
  if (radius > maxRadius)
    rmove = -1;
  else if (radius < minRadius)
    rmove =0.1;
}

void dothingi(){
  speed = 0.0075;
  noStroke();
 
  int radiusofsolarsystem = 75 + 100;
  float asteroidx = width/2 + cos (variablea) * radiusofsolarsystem;
  float asteroidy = height/2 + sin (variablea) * radiusofsolarsystem;
  variablea = variablea + speed;
  fill(0, 0, 255);
 
  ellipse(asteroidx, asteroidy, 10, 10);
  radius += rmove; 
  if (radius > maxRadius)
    rmove = -1;
  else if (radius < minRadius)
    rmove =0.1;
}

void dothingv(){
  speed = 0.005;
  noStroke();
 
  int radiusofsolarsystem = 50 + 100;
  float asteroidx = width/2 + cos (variablea) * radiusofsolarsystem;
  float asteroidy = height/2 + sin (variablea) * radiusofsolarsystem;
  variablea = variablea + speed;
  fill(255, 0, 255);
 
  ellipse(asteroidx, asteroidy, 10, 10);
  radius += rmove; 
  if (radius > maxRadius)
    rmove = -1;
  else if (radius < minRadius)
    rmove =0.1;
}