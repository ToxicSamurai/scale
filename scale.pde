//ToxicSamurai
//Licensed under Creative Commons CC-BY-NC-SA

//Floats for the scale size and how fast it changes
float scaleSize = 1;
float scaleSpeed = 0.015;

//Integers for x position
int posX = 450;

//Sets canvas size, stroke transparency, and framerate
void setup(){
  size(800,550);
  noStroke();
  frameRate(60);
}

void draw(){
  //Draws shape
  fill(100);
  rect(width/2-50,height/2-50, 100, 100);
  
  //Changes scaleSize value
  scaleChange();
  
  //Scales and moves
  scale(scaleSize);
  translate(scaleSize, scaleSize);
  
  //Draws shape
  fill(255);
  rect(posX, height/2-50, 100, 100);
}

//Function that decreases the size of the scale slowly
void scaleChange(){
   //Alternates the x position variable or something I'm retcommenting this
   if((scaleSize<=0)&&(posX>=450)){
   posX = 250;
   } else if(posX<=250){
    posX = 450; 
   }
   scaleSize -= scaleSpeed;
}
