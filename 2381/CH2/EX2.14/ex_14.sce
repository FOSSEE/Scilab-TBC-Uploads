//Example 14 // Q factor
clc;
clear;
close;
//given data :
C=5*10^-6;// in F
L=2*10^-3;// in H
R=0.2;// in ohm
w=round(sqrt((1/(L*C))-(R^2/(4*L^2))));
f=w/(2*%pi);
Q=w*L/R;
disp(f,"frequency is ,(Hz)=")
disp(Q,"Quality factor,Q = ")
