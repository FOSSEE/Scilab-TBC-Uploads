//page 93
//Example 3.17
clc;
clear;
close;
t = poly(0,"t");
disp('g1 = f1');
disp('g2 = t*f1 + f2');
disp('g3 = t^2*f1 + 2*t*f2 + f3');
disp('g4 = t^3*f1 + 3*t^2*f2 + 3*t*f3 + f4');
P = [1 t t^2 t^3;0 1 2*t 3*t^2;0 0 1 3*t;0 0 0 1];
disp(P,'P = ');
disp(inv(P),'inverse P = ');
disp('Matrix of differentiation operator D in ordered basis B is:'); //As found in example 15
D = [0 1 0 0;0 0 2 0;0 0 0 3;0 0 0 0];
disp(D,'D = ');
disp('Matrix of D in ordered basis B'' is:');
disp(inv(P)*D*P,'inverse(P) * D * P = ');
//end
