//Example 8.6.4: Lx and Rx
clc;
clear;
close;
//given data :
R1=600;// in ohm
R2=1000;// in ohm
R3=100;// in ohm
C1=1;// in micro-farad
Rx=(R2*R3)/R1;
disp(Rx,"resistance,Rx(ohm) = ")
Lx=C1*10^-6*R2*R3;
disp(Lx,"inductance,Lx(henry) = ")
