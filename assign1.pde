PImage bg;
PImage Groundhog;
PImage heart;
PImage heart1;
PImage heart2;
PImage solider;
PImage robot;
PImage soil;
float GroundhogX,GroundhogY,robotX,robotY,soliderX=0,soliderY,soliderXspeed,robotRandomX,robotRandomY,soliderRandomX=0,soliderRandomY;
float razerSpeed,razerX,razerY,razerX1,robotHand;
void setup() {
	size(640, 480, P2D);
	bg = loadImage("img/bg.jpg");
  soil = loadImage("img/soil.png");
  heart = loadImage("img/life.png");
  heart1 = loadImage("img/life.png");
  heart2 = loadImage("img/life.png");
  solider = loadImage("img/soldier.png");
  robot = loadImage("img/robot.png");
  Groundhog = loadImage("img/groundhog.png");
  robotX=random(160,640-80);
  robotRandomY=random(160,480);
  soliderRandomY=random(160,480);
  soliderXspeed=1;
  laserSpeed=2;
  laserX1=robotX;
  laserX = 0;//amount
  robotHand = 0;
}

void draw() {
	background(bg);
  image(soil,0,160);
  strokeWeight(15);
  stroke(124,204,25);
  line(0,160-7.5,640,160-7.5);
  strokeWeight(5);
  stroke(255,255,0);
  fill(253,184,19);
  ellipse(590,50,120,120);
  image(heart,10,10);
  image(heart1,80,10);
  image(heart2,150,10);
  GroundhogX=280;
  GroundhogY=80;
  image(Groundhog,GroundhogX,GroundhogY);
  println("robotRandomY=",robotRandomY);
  if(robotRandomY<240){robotY=160;}
  else if(robotRandomY<320){robotY=240;}
  else if(robotRandomY<400){robotY=320;}
  else if(robotRandomY<480){robotY=400;}
  println("robotY=",robotY);
  strokeWeight(10);
  stroke(255,0,0);
  
     if(laserX > 145)
   {
   	laserX = 0;
	  robotHand = 0;
   }
   
   stroke(255,0,0);
   strokeWeight(10);
   
   if(robotHand < 40) // grow
   {
   	line(laserX1 - robotHand - 25,robotY+37,laserX1 - 25,robotY+37);
	  robotHand += laserXSpeed;
   }
   else // move
   {
   	laserX += laserXSpeed;
	  line(laserX1 - laserX - robotHand - 25,robotY+37,laserX1 - laserX - robotHand - 25 + 40,robotY+37);
   } 
  
  //razerX= razerX-razerSpeed;
  //razerY=robotY+37;
  //razerX=razerX1-razerX%185;
  //line(razerX,razerY,razerX-40,razerY);
  image(robot,robotX,robotY);
  
  soliderX+=soliderXspeed;
  soliderX=soliderX%(480+160);
  println("soliderRandomY=",soliderRandomY);
  if(soliderRandomY<241){soliderY=160;}
  else if(soliderRandomY<321){soliderY=240;}
  else if(soliderRandomY<401){soliderY=320;}
  else if(soliderRandomY<481){soliderY=400;}
  println("soliderY=",soliderY);
  image(solider,soliderX,soliderY);
}
