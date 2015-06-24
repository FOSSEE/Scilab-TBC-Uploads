//Chapter 7, Problem 8
clc;
A=10*10^-4;                 //cross-sectional area
l=0.2;                         //mean circumference in meter
phi=0.3*10^-3;                  //flux
B=phi/A;                        //flux density
H=1000;
mmf=H*l;                        //magnetomotive force
disp("From the magnetisation curve for cast iron on page74,")
printf("m.m.f = %f A",mmf);
