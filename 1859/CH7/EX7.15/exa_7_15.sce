// Exa 7.15
clc;
clear;
close;
// Given data
r= 469;// in ohm
R2= 1000;// in ohm
R3= 218;//in ohm
R4= 1000;//in ohm
C= 10;// in miu F
C= C*10^-6;// in F
R1= R2*R3/R4;// in ohm
disp(R1,"Resistance of inductor in ohm")
 L1= C*R2/R4*(r*(R3+R4)+R3*R4);// in H
 disp(L1,"Inductance of inductor in H")
 
