// chapter 2
// example 2.3
// Find the minimum diameter of the steel wire
// page-16-17
clear;
clc;
// given
P=5; // in kN (Load on the steel wire)
sigma=100; // in MPa (stress in the wire)
// calculate
P=P*1E3; // changing unit from kN to N
sigma=sigma*1; // changing unit from MPa to N/mm^2
// since stress=P/A= P/(Pi*d^2/4), therefore d can be calculated as
d=sqrt(4*P/(%pi*sigma)); // calculation of minimum diameter of the steel wire
printf("\nThe minimum diameter of the steel wire is \t d=%.2f mm  or %.f mm",d,d);
