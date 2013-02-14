//Adam Reis
Cube [][]Cubes;
int across;
float len;
boolean[] params;
Cube ralph;

void setup()
{
  size(770,770);
  across = 64;
  Cubes = new Cube[across][across];
  len = float(width/(across*2));
  params = new boolean[12];
  for(int i = 0;i<12;i++)
      params[i] = true;
  ralph = new Cube(200,200,500,params);
  //ralph.draw();
  for(int i = 0;i<12;i++)
      params[i] = false;
   drawer();
}

void drawer()
{
   float xpos;
  float ypos = len*1.5+2;  
  for(int k = 0; k<across; k++){
    xpos = len/3;
    println("k="+k);
  for(int j = 0; j<across; j++){
    println("    j="+j);
      Cubes[k][j] = new Cube(len,xpos,ypos,params);
      Cubes[k][j].draw();
      xpos+= 2*len;
      binaryIncrement();
  }
    ypos+= 2*len;
  }
  println("DOOOONE");
}


void binaryIncrement(){
  for(int i =0;i<12;i++)
  {
    if (params[i] == false)
    {
      params[i] = true;
      if(i>0)
      {
      for(int j = i-1;j>=0;j--)
      {
        if(params[j] == true)
          params[j] = false;
        else
          params[j] = true;
      }
      }
      break;
    }
  }
}

