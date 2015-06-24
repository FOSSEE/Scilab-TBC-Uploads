// Example 1.30

clear; clc; close;
format('v',7);
// Given data
R2=0.04;//in ohm
X2=0.2;//in ohm
TstByTm=50;//in %

//Calculations
Sm=1;//slip for max Torque
R2dash=Sm*X2;//in ohm
Rx=R2dash-R2;//in ohm
disp(Rx,"(i) External resistance required for max Torque(ohm ): ");
TstByTm=TstByTm/100;//in ratio
//Formula : Tst proportional to E2^2*R2dash/(R2dash^2+X2^2)
//Formula : Tm Proportional to E2^2/2/X2
P=[TstByTm -2*X2 TstByTm*X2^2];//Polynomial for R2dash
R2dash=roots(P);//
R2dash=R2dash(2);//discarding higher value bcoc R2dash < X2
Rx=R2dash-R2;//in ohm
disp(Rx,"(ii) Extra resistance required for 50% max Torque at start(ohm) : ");
