// Exa 7.14
clc;
clear;
close;
// Given data
R2= 1000;// in ohm
R3= 1000;//in ohm
R4= 1000;//in ohm
C4= 0.5;// in miu F
C4= C4*10^-6;// in F
R1= R2*R3/R4;// in ohm
disp(R1,"Resistance of inductor in ohm")
 L1= C4*R2*R3;// in H
 disp(L1,"Inductance of inductor in H")
 
