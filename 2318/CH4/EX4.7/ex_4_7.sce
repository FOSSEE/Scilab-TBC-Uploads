//Example 4.7: Length
clc;
clear;
close;
//given data :
l=40;// in cm
r=0.5;// ion ohm
R=r*l/1;// in ohm
V=1.2;// in V
V1=6;// in V
I=V/R;
x=V1/(r*I);
disp(x,"The length of slide wire,x(cm) = ")
