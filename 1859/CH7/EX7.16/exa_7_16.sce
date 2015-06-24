// Exa 7.16
clc;
clear;
close;
// Given data
r= 500;// in ohm
R2= 400;// in ohm
R3= 400;//in ohm
R4= 400;//in ohm
C= 2;// in miu F
C= C*10^-6;// in F
R= R2*R3/R4;// in ohm
disp(R,"Resistance of AB in ohm")
 L= C*R2/R4*(r*(R3+R4)+R3*R4);// in H
 disp(L,"Inductance of AB in H")
 
