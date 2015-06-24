clc;clear;
//Example 7.11

//given data
P1=14;
T1=50+460;
T2=320+460;

//constants used
k=1.667;

//calculations
P2=P1*(T2/T1)^(k/(k-1));
disp(P2,'exit pressure in psia')
