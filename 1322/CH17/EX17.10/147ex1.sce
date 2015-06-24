//x+y=1, 38x^2-x*y+y^2=37

clear;
clc;
close;
x=poly(0,'x');
y=1-x;
//substitute y=1-x in equ. 38x^2-x*y+y^2=37
Y=3*x^2-x*(1-x)+(1-x)^2-37;
x=roots(Y);
y=1-x;
mprintf('the solutions are: \n')
mprintf(" (%f,%f) \n",x,y)
