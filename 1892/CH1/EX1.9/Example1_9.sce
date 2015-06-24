// Example 1.9

clear; clc; close;

format('v',7);
// Given data
R2=0.04;//in ohm
X2=0.2;//in ohm

//Calculations
R2dash=X2;//in ohm (for Tm=Tst)
//formula : R2dash=R2+rex
Rex=R2dash-R2;//in ohm/phase
disp(Rex,"(i) External resistance required in ohm/phase : ");
disp("For Tst=Tm/2, Tm=k*E2^2/2/X2 and Tst=k*E2^2*R2/(R2^2+X2^2)");
disp("This gives a polynomial for value of R2dash.");
P=[1 -4*X2 X2^2];//R2dash^2-4*X2*R2dash+X2^2=0
R2dash=roots(P);//in ohm
disp(R2dash,"Value of R2dash(ohm) are ")
disp(R2dash(2),"But R2dash cant be greater than X2, R2dash(ohm) is : ");
Rex=R2dash(2)-R2;//in ohm/phase
disp(Rex,"(ii) External resistance required in ohm/phase : ");
