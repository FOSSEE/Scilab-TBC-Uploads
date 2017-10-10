// Example 5.3
// Computation of (a) Speed at which maximum torque is developed (b) Maximum 
// torque that the machine can develop (c) Rated shaft torque (d) Which NEMA 
// design fits this motor?
// Page No. 184

clc;
clear;
close;

// Given data
f=60;                  // Frequency in Hz
p=4;                   // Number of poles
hp=40;                 // Horsepower
n=1751;                // Rated speed of machine
v=460/sqrt(3);       // Voltage
s=0.1490;              // Slip
R2=0.153;              // Rotor resistance 
R1=0.102;
X1=0.409;              // Rotor reactance
X2=0.613;

// (a) Speed at which maximum torque is developed 
STDmax=R2/(sqrt(R1^2+(X1+X2)^2));
ns=120*f/p;                          //stator spped
nr=ns*(1-s);

// (b) Maximum torque that the machine can develop
TDmax=(21.12*v^2)/(2*ns*(sqrt(R1^2+(X1+X2)^2)+R1));

// (c) Rated shaft torque
TDshaft=hp*5252/n;

// Display result on command window
printf("\n Speed at which maximum torque is developed = %0.0f r/min ",nr);
printf("\n Maximum torque that the machine can develop = %0.1f lb-ft ",TDmax);
printf("\n Rated shaft torque = %0.1f lb-ft ",TDshaft);
printf("\n Maximum torque is developed at slip of 0.1490 and \n hence machine is placed in design A category ");
