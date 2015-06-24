//Exa 4.5
clc;
clear;
close;
//given data
//t=450-500*x+100*x^2+150*x^3 at any instant, so
// dtBYdx= -500+200*x+450*x^2

L=0.5;// thickness of the wall in meter
k=10;// in W/mK
// Rate of heating entering in the wall per unit area, at
x=0;
//q1= -k*dtBYdx
q1= -k*(-500+200*x+450*x^2);// in W/m^2
// Rate of heat going out of the wall per unit area , at
x=L;
q2= -k*(-500+200*x+450*x^2);// in W/m^2
E=q1-q2;// in W/m^2
disp(E,"Heat energy stored per unit area in W/m^2")
