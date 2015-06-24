//Example 15.2
//Mechanics of Metal Working
//Page No. 511
clc;clear;close;

D0=25;               //in mm
D1=20;               //in mm
D2=15;               //in mm
ep1=log((D0/D1)^2);
U1=integrate('200000*e^0.5','e',0,ep1);
ep2=log((D1/D2)^2);
U2=integrate('200000*e^0.5','e',ep1,ep1+ep2);
printf('\nPlastic work done in 1st step = %g lb/in^2\nPlastic work done in 2nd step = %g lb/in^2\n',U1,U2);
