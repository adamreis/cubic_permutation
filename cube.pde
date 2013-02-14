
class Cube{
  float l;
  float x;
  float y;

  boolean[] in;
  

  Cube(float L, float X, float Y, boolean[] input){
    x=X;
    y=Y;
    l=L;
    in = input;
    
    
  }
 
 void update(boolean[] input){
   in = input;
 }
 
 void draw(){

if(in[11])
      draw12();
if(in[10])
     draw11();
if(in[9])
      draw10();
if(in[8])
     draw9();
if(in[7])
      draw8();
if(in[6])
      draw7();
if(in[5])
      draw6();
if(in[4])
      draw5();
if(in[3])
      draw4();
if(in[2])
      draw3();
if(in[1])
      draw2();
if(in[0])
    draw1();
 }
  
 void draw1(){
   stroke(0);
   line(x,y,x,y-l);
   println("drawing line 1");
 }
  void draw2(){
   line(x,y-l,x+l,y-l);
   println("drawing line 2");
 }
  void draw3(){
   line(x+l,y-l,x+l,y);
   println("drawing line 3");
 }
  void draw4(){
    stroke(0);
   line(x,y,x+l,y);
   println("drawing line 4");
 }
  void draw5(){
   stroke(100);
   line(x,y-l,x+l/sqrt(3),y-l-l/sqrt(3));
   println("drawing line 5");
 }
  void draw6(){
       stroke(100);
   line(x+l,y-l,x+l+l/sqrt(3),y-l-l/sqrt(3));
   println("drawing line 6");
 }
  void draw7(){
       stroke(100);
   line(x+l,y,x+l+l/sqrt(3),y-l/sqrt(3));
   println("drawing line 7");
 }
  void draw8(){
       stroke(100);
   line(x,y,x+l/sqrt(3),y-l/sqrt(3));
   println("drawing line 8");
 }
  void draw9(){
    stroke(150);
   line(x+l/sqrt(3),y-l-l/sqrt(3),x+l/sqrt(3),y-l/sqrt(3));
   println("drawing line 9");
 }
  void draw10(){
    stroke(150);
   line(x+l/sqrt(3),y-l-l/sqrt(3),x+l+l/sqrt(3),y-l-l/sqrt(3));
   println("drawing line 10");
 }
  void draw11(){
    stroke(150);
   line(x+l+l/sqrt(3),y-l-l/sqrt(3),x+l+l/sqrt(3),y-l/sqrt(3));
   println("drawing line 11");
 }
  void draw12(){
    stroke(150);
   line(x+l/sqrt(3),y-l/sqrt(3),x+l+l/sqrt(3),y-l/sqrt(3));
   println("drawing line 12");
 }
 

}


