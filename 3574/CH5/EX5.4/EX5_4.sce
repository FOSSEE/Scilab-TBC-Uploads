// Example 5.4
// Computation of (a) Amount of torque that must be removed from the motor 
// shaft to maintain 1760r/min (b) Expected minimum startimg torque for the 
// lower voltage (c) Percent change in developed torque caused by 10% drop in 
// system voltage.
// Page No. 185

clc;
clear;
close;

// Given data

hp=50;              // Horsepower
n=1760;             // Rated speed of machine
v1=460;


// (a) Amount of torque that must be removed from the motor shaft to maintain 
// 1760r/min
v2=v1*0.90;
Trated=hp*5252/n;       //Rated torque 
TD2=Trated*(v2/v1)^2;
Treduction=Trated-TD2;

// (b) Expected minimum startimg torque for the lower voltage

Tlr=1.40*Trated;
Tlr2=Tlr*(v2/v1)^2;

// (c) Percent change in developed torque caused by 10% drop in system voltage

Tchange=(TD2-Trated)/Trated;
Tchanger=(Tlr2-Tlr)/Tlr;

// Display result on command window
printf("\n Amount of torque that must be removed from the motor shaft = %0.1f  lb-ft",Treduction);
printf("\n Expected minimum starting torque for the lower voltage = %0.1f lb-ft ",Tlr2);
printf("\n Percent change in developed torque = %0.0f Percent ",Tchanger*100);
