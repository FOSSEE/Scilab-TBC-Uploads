
//x^2+y^2=89, xy=40
clear;
clc;
close;
x=poly(0,'x');
//substitute y=40/x in x^2+y^2=89
Y=x^2+(40/x)^2-89;
x=roots(numer(Y));//Y=0, numerator=0
y=sqrt(89-x^2);
mprintf('the solutions of (x,y) are: \n')
xy=[x,y]

