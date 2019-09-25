//variables
int x1 = -200; //hills
int x2 = 200;
int x3 = 600; 
int x4 = 500; //cloud

void setup() {
  size (800,600);
}


void draw() {
  
  //BACKGROUND
  background(#ADEFFF); //baby blue
   
   
   //CLOUDS
   fill(#FEF7FF);
   stroke(#FEF7FF);
   ellipse(x4,150,100,100);
   ellipse(x4,200,100,100);
   ellipse(x4-50,200,100,100);   
   ellipse(x4+50,200,100,100);     
 
   
   //MOVING CLOUDS
   x4 = x4 + 1;
   
   
   //TELLEPORTING CLOUDS
   if (x4 >= 900) 
   { x4 = -100;}
   
  
  //HILLS
  fill(#DEFFAD); //light green
  stroke(#DEFFAD);
  ellipse(x1,400,400,400); //always need 1 more than the amount on screen
  ellipse(x2,400,400,400);
  ellipse(x3,400,400,400);
  
  
  //MOVING HILLS
  x1 = x1 + 2;
  x2 = x2 + 2;
  x3 = x3 + 2;
  
  
  //TELEPORTING HILLS
  if (x1 >= 1000) //width of ellipse + the radius width = 800+200=1000 
  {x1 = -200;} //edge of screen - radius width = 0-200=-200
  
  if (x2>=1000) //all start at different places, but all teleport at same spot
  {x2 = -200;}
  
   if (x3>=1000) 
  {x3 = -200;}
  
  
}
