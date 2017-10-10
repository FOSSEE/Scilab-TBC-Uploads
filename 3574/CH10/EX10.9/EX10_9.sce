// Example 10.9
// Computation of (a) Steady state armature current if a rheostat in the 
// shunt field circuit reduces flux in air gap to 75% of its rated value 
// (b) Steady state speed for the conditions in (a)
// Page No. 421

clc;
clear;
close;

// Given data
Rf=160;               // Field resistance
VT=240;               // Rated voltade of the machine
IT=37.5;              // Total current
Ra=0.213;             // Armature resistance
Rip=0.092;            // Resistance of interpolar winding
Rcw=0.065;            // Resistance of compensating windings
n1=2500;              // Rated speed of the machine


// (a) At rated conditions

If=VT/Rf;               // Field current
Ia1=IT-If;              // Armature current
Ia2=Ia1*0.50*1/0.75;

// (b) steady state speed for the above mentioned conditions

Racir=Ra+Rip+Rcw;

n2=n1*(VT-(Ia2*(1+Racir)))/0.75*(1/(VT-(Ia1*Racir)));


// Display result on command window

printf("\n Steady state armature current = %0.1f A ",Ia2);
printf("\n Steady state speed = %0.0f r/min ",n2);


