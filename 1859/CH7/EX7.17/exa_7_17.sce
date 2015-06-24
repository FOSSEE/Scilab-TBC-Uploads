// Exa 7.17
clc;
clear;
close;
// Given data
r= 100;// in ohm
R2= 1000;// in ohm
R3= 500;//in ohm
R4= 1000;//in ohm
C= 3;// in micro F
C= C*10^-6;// in F
Rx= R2*R3/R4;// in ohm
disp(Rx,"Value of Rx in ohm")
 Lx= C*R2/R4*(r*(R3+R4)+R3*R4);// in H
 disp(Lx,"Value of Lx in H")
 
