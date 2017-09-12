int x;
int y;
int x1;
int y1;
int p;
int r, g, b;
void setup()
{
  size(1280, 720);
  frameRate(120);
  x=320;
  y=360;
  x1=960;
  y1=360;
  p=1;
  r=(int)random(255);
  g=(int)random(255);
  b=(int)random(255);
}

void draw()
{
  //background(r, g, b);
  fill(random(255), random(255), random(255));
  background(#000000);
  //fill(#FFFFFF);
  ellipse(x, y, 30, 30); //rect kwadrat
  //fill(#2100FF);
  ellipse(x1, y1, 30, 30);
}


void keyPressed()
{
  print("%d",key);
  
  
  //if (key ==' ')
  //  background(#000000);  
  //{
  //  r=(int)random(255);
  //  g=(int)random(255);
  //  b=(int)random(255);
  //}
  //if (key == 'g')
  //  background(#3200FF);
  //if (key == 'f')
  //  background(#FF8000);
  if (key== 'w') y=y-5;
  if (key== 's') y=y+5;
  if (key== 'x')
  {
    y = y1;
    x= x1;
  }  
  if (key== 'a') x=x-5;
  if (key== 'd') x=x+5;
  if (key== 'e') 
  {
    y=y-5; 
    x=x+5;
  }
  if (key== 'q') 
  {
    y=y-5; 
    x=x-5;
  }
  if (key== 'z') 
  {
    y=y+5; 
    x=x-5;
  }
  if (key== 'c') 
  {
    y=y+5; 
    x=x+5;
  }

  // II kolo
  if (key== '8') y1=y1-5;
  if (key== '2') y1=y1+5;
  if (key== '5')
  {
    y1= y;
    x1= x;
  }
  if (key== '4') x1=x1-5;
  if (key== '6') x1=x1+5;
  if (key== '9') 
  {
    y1=y1-5; 
    x1=x1+5;
  }
  if (key== '7') 
  {
    y1=y1-5; 
    x1=x1-5;
  }
  if (key== '1') 
  {
    y1=y1+5; 
    x1=x1-5;
  }
  if (key== '3') 
  {
    y1=y1+5; 
    x1=x1+5;
  }

  y=pozycja_y (y);
  y1=pozycja_y(y1);
  
  x=pozycja_x (x);
  x1=pozycja_x(x1);

  //if (y>=height) y=0;
  //else if (y<=0) y=height;
  //if (x>=width) x=0;
  //else if (x<=0) x=width;


  //if (y1>=height) y1=0;
  //else if (y1<=0) y1=height;
  //if (x1>=width) x1=0;
  //else if (x1<=0) x1=width;
}
int pozycja_y (int y)
{
  if (y>=height) y=0;
  else if (y<=0) y=height;

  return y;
}
int pozycja_x (int x)
{
  if (x>=width) x=0;
  else if (x<=0) x=width;

  return x;
}