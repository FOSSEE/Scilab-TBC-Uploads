// Example 1.26

clear; clc; close;
format('v',7);
// Given data
f=50;//in Hz
P=4;//no. of poles
X2=0.1;//in ohm
R2=0.02;//in ohm
//Tst=2/3*Tmax
TstByTm=2/3;//ratio

//Calculations
disp("Tst proportional to E2^2*R2dash/(R2dash^2+X2^2)");
disp("Tm proportional to E2^2/(2*X2)");
//formula : TstByTm=(E2^2*R2dash/(R2dash^2+X2^2))/(E2^2/(2*X2))
P=[TstByTm -2*X2 TstByTm*X2^2];//Polynomial for R2dash
R2dash=roots(P);//
R2dash=R2dash(2);//discarding higher value bcoc R2dash < X2
Rex=R2dash-R2;//in ohm
disp(Rex,"Extra resistance required in ohm : ");
