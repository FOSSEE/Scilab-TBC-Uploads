//Example 11.4: Current
clc;
clear;
close;
//given data :
I=300;// in A
R=0.08;// in ohm
Vd=6;// voltage drop in volts
I_dash=((R*(I/2))-Vd)/R;
disp(I_dash,"Current(A) = ")
