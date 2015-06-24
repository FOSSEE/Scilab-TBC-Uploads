//Caption:  Joint probability
//Example 2.20
//Page no 60
//Find Determine the value of constant C
clc;
clear;
X=[0,0;2,2;2,0];
Y=[0,0;3,3;0,3];
function y=f(x,y),
         y=2*x+y;
endfunction
P=int2d(X,Y,f);
C=poly(0,"C");
//we know that joint PDF 
// double integration fXY(x,y)dxdy=1
//C*P==1;
C=1/P;
disp(C,"C = ")
