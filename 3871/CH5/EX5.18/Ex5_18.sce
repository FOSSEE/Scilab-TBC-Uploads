//=============================================================
//Chapter 5 example 18

clc;
clear all;

//variable declaration
p       = 80;
q       = 60

//i     = 80-60*sqrt(2)*sin(theta+%pi/6)
//i^2       = x = (80)^2)-((2*80*60*sqrt*sin(theta+(%pi/6))0^2)+((80^2)*(sin(theta+(%pi/6))^2))
//x   =a-b*(sin(theta+(%pi/6))^2)+(c)*(sin(theta+(%pi/6))^2)
//x = (80)^2)-((2*80*60*sqrt*sin(theta+(%pi/6))0^2)+(((80^2)/2)*(1-(cos(theta+(%pi/6))^2))
//x     = a-(b*sin(theta+(%pi/6)))+(c/2)-cos(theta+((pi/6)^2))
 a      = p^2;
 b      =(2*(q^2)*(sqrt(2)));
 c      = (q*sqrt(2))^2;
 //x    = (1/2*%pi)*{(integral(x*dtheta))}(0-2*%pi)
 //applying integration
 y      =(a+(c/2));
 x      = (1/%pi)*y*(%pi);          //Irms^2
 Irms   =sqrt(x);       //reading in A
 
 
 //result
 mprintf("electrodynamometer instrument indicates the rms value of the current therefore the dreading will be equla ")
 mprintf("Irms  = %3.2f A",Irms);
 
 
