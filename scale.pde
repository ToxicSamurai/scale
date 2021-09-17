//ToxicSamurai
//Licensed under Creative Commons CC-BY-NC-SA

float scaleSize = 1;
float scaleSpeed = 0.015;
int posX = 450;

void setup(){
  size(800,550);
  noStroke();
  frameRate(60);
}

void draw(){
  fill(100);
  rect(width/2-50,height/2-50, 100, 100);

  scaleChange();
  scale(scaleSize);
  translate(scaleSize, scaleSize);
  fill(255);
  rect(posX, height/2-50, 100, 100);
 
}

void scaleChange(){
   if((scaleSize<=0)&&(posX>=450)){
   posX = 250;
   } else if(posX<=250){
    posX = 450; 
   }
   scaleSize -= scaleSpeed;
}
