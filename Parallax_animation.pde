//variables
int h1 = -200; //back hills
int h2 = 200;
int h3 = 600; 

int cloud = 500; //cloud

int hh1 = -200; //front hills
int hh2 = 0;
int hh3 = 200;
int hh4 = 400;
int hh5 = 600;
int hh6 = 800;

int tree = 0;

//===================================================

void setup() {
  size (800,600);
}


void draw() {

  //BACKGROUND
  background(#CEEAE8); //baby blue
   

   //CLOUDS
   fill(#FEF7FF);
   stroke(#FEF7FF);
   ellipse(cloud,100,100,100);
   ellipse(cloud,150,100,100);
   ellipse(cloud-50,150,100,100);   
   ellipse(cloud+50,150,100,100);     
 
   
   //MOVING CLOUDS
   cloud = cloud + 1;
   
   
   //TELLEPORTING CLOUDS
   if (cloud >= 900) 
   { cloud = -100;}
   
  
  //BACK HILLS
  fill(#BAE88A); //light green
  stroke(#BAE88A);
  ellipse(h1,400,400,500); //always need 1 more than the amount on screen
  ellipse(h2,400,400,500);
  ellipse(h3,400,400,500);
  
  
  //MOVING BACK HILLS
  h1 = h1 + 2;
  h2 = h2 + 2;
  h3 = h3 + 2;
  
  
  //TELEPORTING BACK HILLS
  if (h1 >= 1000) //width of ellipse + the radius width = 800+200=1000 
  {h1 = -200;} //edge of screen - radius width = 0-200=-200
  
  if (h2>=1000) //all start at different places, but all teleport at same spot
  {h2 = -200;}
  
   if (h3>=1000) 
  {h3 = -200;}
 
 
 //FRONT HILLS 
  fill(#86D87A); //DARK GREEN
  stroke(#86D87A);
  ellipse(hh1,450,200,300); //x,y,w,h
  ellipse(hh2,450,200,300);
  ellipse(hh3,450,200,300);
  ellipse(hh4,450,200,300);  
  ellipse(hh5,450,200,300);  
  ellipse(hh6,450,200,300);  
  
  
  //MOVING FRONT HILLS
  hh1 = hh1 + 3;
  hh2 = hh2 + 3;
  hh3 = hh3 + 3;
  hh4 = hh4 + 3;
  hh5 = hh5 + 3;
  hh6 = hh6 + 3;
  
  //TELEPORTING FRONT HILLS
 if (hh1>=1000)
 {hh1 = -200;}
 
 if (hh2>=1000)
 {hh2 = -200;}

 if (hh3>=950)
 {hh3 = -250;}
 
 if (hh4>=1000)
 {hh4 = -200;} 
 
  if (hh5>=1000)
 {hh5 = -200;} 
 
 if (hh6>=1000)
 {hh6 = -200;}
 
 
  //FOREGROUND
  fill(#F8FAB1);
  rect(0,400,800,200);
  
  
  //MOVING TREE
  translate(tree,0);
  tree();
  
  tree = tree + 4;
  
  if (tree >= 1200)
  {tree = -200;}
  
  
}

//=====================================================

//TREE
void tree () {
  fill(#837251); //BROWN
  stroke(#837251);
  rect(0,350,50,200); //top left corner x,y,w,h
  
  fill(#7EAA7C); //OLIVE GREEN
  stroke(#7EAA7C);
  ellipse(20,350,100,100); //x,y,w,h
  ellipse(70,300,130,130);
  ellipse(-40,290,130,130);
  ellipse(-50,220,130,130);
  ellipse(20,250,100,100);
  ellipse(90,220,130,130);
  ellipse(0,150,120,120);
  ellipse(70,150,100,100);
}
