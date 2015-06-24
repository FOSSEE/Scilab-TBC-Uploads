// Example 1.43

clear; clc; close;

format('v',6);
// Given data
TmByTfl=2.5;//ratio
R2=0.4;//in ohm/phase
X2=4;//in ohm/phase

//Calculations
//Formula : Tm=K*E2^2/2/X2 and Tst=K*E2^2*R2/(R2^2+X2^2)
//E2=E2/sqrt(3);//for star delta starter
TstByTfl=(TmByTfl*2*X2)*R2/(R2^2+X2^2)/3;//calculated from above equations
disp(TstByTfl,"ratio of starting torque to full load torque is : ");
