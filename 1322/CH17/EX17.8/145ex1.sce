

//given u=160,g=10,h=240
clear
clc
close
//using the formulae "h=u*t-(g*t^2)/2"
u=160;
g=10;
h=240;
t=poly(0,'t');
r=(240-u*t+(g*t^2)/2)//u*t-(g*t^2)/2-h=0
a=5;b=-160;c=240;//from equation we get these values
//using the formulae - solution of quadratic equation ax^2+bx+c=0
t=(-b+sqrt(b^2-4*a*c))/(2*a);
t1=(-b-sqrt(b^2-4*a*c))/(2*a);
mprintf("\n the solution  is  t=%f or t=%f\n",t,t1)//the answer given in textbook is wrong
