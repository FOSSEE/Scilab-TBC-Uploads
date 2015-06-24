clc;
clear;
h=0.01;
delx=2;
x=2+h*delx^2;
a=[x -1 0 0;-1 x -1 0;0 -1 x -1;0 0 -1 x];
b=[40.8; 0.8; 0.8; 200.8];
T=linsolve(a,b);
disp("The temperature at the interior nodes:")
disp(abs(T))
