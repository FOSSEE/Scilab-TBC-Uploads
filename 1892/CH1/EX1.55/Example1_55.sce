// Example 1.55

clear; clc; close;

format('v',7);
// Given data
TmByTfl=2.2;//ratio
R2=0.5;//in ohm per phase
X2=5;//in ohm per phase
K=70;//tapping in %
 
//Calculations
//Formula :Tst proportional to E2^2*R2/(R2^2+X2^2) 
//Formula :Tm proportional to E2^2/(2*X2) 
//Formula :Tfl proportional to 1/4.4*E2^2/X2
TstByTfl=R2/(R2^2+X2^2)*TmByTfl*2*X2;//ratio for direct on line
disp(TstByTfl,"Ratio of starting torque to full load torque for direct on line starter : ");
TstByTfl=(1/sqrt(3))^2*R2/(R2^2+X2^2)*TmByTfl*2*X2;//ratio for star delta starting
disp(TstByTfl,"Ratio of starting torque to full load torque for star delta starter : ");
TstByTfl=(K/100)^2*R2/(R2^2+X2^2)*TmByTfl*2*X2;//ratio for auto transformer starting
disp(TstByTfl,"Ratio of starting torque to full load torque for auto transformer starter : ");
