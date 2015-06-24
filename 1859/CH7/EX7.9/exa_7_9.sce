// Exa 7.9
clc;
clear;
close;
// Given data
f=50;//in Hz
R4=1000;//in ohm
C3=50*10^-12;//in F
delta=9;// in °
epsilon_r= 2.3;
epsilon_0= 8.854*10^-12;
d= 0.3*10^-2;// in meter
A=314;// area of each electrode in square cm
A=A*10^-4;// in square meter
omega=2*%pi*f;
C1= epsilon_r*epsilon_0*A/d;// in F
// Formula tan (delta)= 1/(omega*C1*R1)
R1= 1/(omega*C1*tand(delta));// in ohm
C4= 1/(omega^2*C1*R1*R4);// in F
disp(C4*10^6,"Variable capacitor in micro F")
R2= C3*R4*(cosd(delta))^2/C1;// in ohm
disp(R2,"Variable resistance in ohm")

// Note: Calculation of R2 in the book is wrong
