//Finding the Reverse Recovery Current
//Example 2.2 (Page No- 37) 
clc
clear
// Given data
trr = 3*10^-6; // s
di = 30/10^-6; // di/dt in A/seconds

Qrr = 0.5*di*trr^2;
Qrr = Qrr*10^6; // to get the Qrr in microCoulomb
printf('storage charge Qrr : %d uC(microclouomb) \n', Qrr);

Irr = sqrt (2*Qrr*di);
Irr = sqrt(2*135*10^-6*30*10^6);

printf('peack reverse current Irr : %d A', Irr);
