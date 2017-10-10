// Example 5.10
// Determine (a) Range of rotor speed (b) Required rheostat resistance
// Page No. 198

clc;
clear;
close;

// Given data
F=60;                  // Frequency of motor
P=14;                  // Number of poles
SL=0.395;              // Low speed point
SH=0.02;               // High speed point
Stdmax=0.74;           // Value at which TD is maximum (from curve B)
R1=0.403;              // Motor resistance
R2=0.317;
X1=1.32;               // Motor reactance
X2=1.32;
a=3.8;                 // Ratio of stator turns/phase to rotor turns/phase

// (a) Range of rotor speed
ns=120*F/P;           // Speed
nrl=ns*(1-SL);        // Rotor low speed
nrh=ns*(1-SH);        // Rotor high speed

// (b) Required rheostat resistance
Rrhe=Stdmax*(sqrt(R1^2+(X1+X2)^2))-R2;
Rehereq=Rrhe/a^2;

// Display result on command window
printf("\n Low range of rotor speed = %0.0f r/min",nrl);
printf("\n High range of rotor speed = %0.0f r/min",nrh);
printf("\n Required rheostat resistance = %0.3f Ohm/phase",Rehereq);

