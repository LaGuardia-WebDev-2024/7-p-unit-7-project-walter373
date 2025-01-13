//🟢Setup Procedure - Runs Once to Set The Canvas
void setup() {
    size(400, 400); 
    frameRate(100);
}

//🎯Variable Declarations Go Here
var creeperX=340; 
var creepSize=200;
var leftX=145;

var eyeSize=100
//🟢Draw Procedure - Runs on Repeat
draw = function(){
 
  background(255,255,255,0);
  
   if(mousePressed){
    showXYPositions();
    
  }
  
  //🎯Animation Code Goes Here

  fill(0,255,0)
  //creeper
  //head
rect(creeperX,160,creepSize,creepSize)
//bod
rect(creeperX,210,creepSize,creepSize)
//feet
rect(creeperX,260,creepSize,creepSize)
rect(creeperX+30,260,creepSize,creepSize)
//eyes
fill(0,0,0)
ellipse(350,180,eyeSize,eyeSize)
ellipse(390,180,eyeSize,eyeSize)
fill(0,0,0)
//enderman
//bod
rect(leftX,200,60,140)
rect(leftX,150,60,60)
rect(leftX-25,210,30,100)
rect(leftX+55,210,30,100)
line(leftX+30,340,leftX+30,280)
//eyes
fill(255,255,255)
rect(leftX+5,170,15,10)
rect(leftX+40,170,15,10)
//pupil
fill(255,25,255)
ellipse(leftX+49,175,10,10)
ellipse(leftX+13,175,10,10)
creepSize=creepSize + 3;

leftX +=4;
eyeSize=eyeSize+3;
if(eyeSize>10){
eyeSize=1;
}
if(creepSize >100){
creepSize = 1
}
}

//🟡Extra FUN Features Ms. Hall Added
//Proceed with Caution (and Curiosity!)

showXYPositions = function(){
    fill(255,255,255)
    rect(270,300,150,100)
    fill(0,0,0)
    textSize(30)
    text("x = " + mouseX + "\ny = " +mouseY, 290, 350)
    fill(255,0,255)
    ellipse(mouseX, mouseY, 10, 10);
    fill(255,255,255)
}
