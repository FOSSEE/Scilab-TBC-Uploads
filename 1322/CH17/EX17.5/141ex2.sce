
//9*x*(x+1)=4
clear;
clc;
close;
x=poly(0,'x');
y=9*x*(x+1)-4; //y=0
  mprintf("the solution  is  \n")
  mprintf("x=%f, \n",roots(y))
