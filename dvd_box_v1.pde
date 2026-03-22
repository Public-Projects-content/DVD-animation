void setup(){
 size(600,600); 
}

float startPos[] = {300,0};
float logoDim[] = {50,20};
float currLoc[] = {0,0};
float currQuad = 2;
float currAngle = 30;
float speed = 5;
void draw(){
  if(currLoc[0]==0 && currLoc[1] ==0){
  currLoc[0] = startPos[0];
  currLoc[1] = startPos[1];
  }
background(255);
float prev_x = currLoc[0];
float prev_y = currLoc[1];

if(currQuad==1){
  println("1");
  currLoc[0] = prev_x - (speed*sin((180 - currAngle)));
  currLoc[1] = prev_y - (speed*cos((180 - currAngle)));
}
if(currQuad==2){
   println("2");
  float L_angle = 180 - currAngle;
   currLoc[0] =prev_x - (speed*sin(L_angle));
  currLoc[1] =prev_y + (speed*cos(L_angle));
}
  if(currQuad==3){
     println("3");
  float L_angle = 90-(currAngle-180);
   currLoc[0] =prev_x - (speed*sin(L_angle));
  currLoc[1] =prev_y + (speed*cos(L_angle));
  }
  if(currQuad ==4){
     println("4");
    float L_angle = currAngle;
   currLoc[0] =prev_x + (speed*sin(L_angle));
  currLoc[1] =prev_y - (speed*cos(L_angle));
  }
  if(currLoc[0]+logoDim[0] > width){
    currAngle = 180-currAngle;
  currQuad = 3;
    //println(currAngle);
    //print(currAngle);
    //println("E");
    currLoc[0]= width-logoDim[0];
   
  }
   if(currLoc[1]+logoDim[1] >= height){
    currAngle = 180-currAngle;
 
    currQuad = 4;
    //println(currAngle);
    //print(currAngle);
    //println("E");
    //currLoc[0]= width-logoDim[0];
   
  }
  if(currLoc[0] <= 0){
    currAngle = 180-currAngle;

   currQuad =1;
    //println(currAngle);
    //print(currAngle);
    //println("E");
    //currLoc[0]= width-logoDim[0];
   
  }
  if(currLoc[1] <= 0){
    currAngle = 180-currAngle;
  currQuad = 2;
    
    //println(currAngle);
    //print(currAngle);
    //println("E");
    //currLoc[0]= width-logoDim[0];
   
  }
  drawLogo(currLoc[0],currLoc[1]);
    //drawLogo(300,300);
}

void drawLogo(float x, float y){

  push();
  fill(0);
  stroke(0,100,89);
  rect(x,y,logoDim[0],logoDim[1]);
  pop();
  
}
