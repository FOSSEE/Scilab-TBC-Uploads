// Example 11.1
// Computation of (a) The armature current when operating at rated conditions 
// (b) The resistance and power rating of an external resistance required in 
// series with the shunt field circuit to operate at 125 percent rated speed
// Page No. 448

clc;
clear;
close;

// Given data
HP=40;                  // hp rating of the device
Perratedload=0.902;     // Percentage rated load
VT=240;                 // Voltage value of motor
RF=99.5;                // Resistance of shunt motor
Nf=1231;                // Turns per pole of the shunt motor
Ra=0.0680;              // Armature resistance
RIP=0.0198;             // Interpole winding resistance
Rs=0.00911;             // Resistance of series field winding
Bp1=0.70;               // Flux density for a net mmf
n1=1150;                // Speed of shunt motor

// (a) The armature current when operating at rated conditions
P=HP*746/Perratedload;
IT=P/VT;                // Total current
IF=VT/RF;               // Field current
Ia=IT-IF;

// (b) The resistance and power rating of an external resistance required in 
// series with the shunt field circuit to operate at 125 percent rated speed

Fnet=Nf*IF;                  // Corresponding mmf from magnetization curve
Racir=Ra+RIP+Rs;
n2=n1*1.25;                  // 125 percent rated speed
// Shaft load is adjusted to  value that limits the armature current to 115% 
// of rated current
Bp2=Bp1*(n1/n2)*((VT-Ia*Racir*1.15)/(VT-Ia*Racir))
FF=2.3*1000;
IF1=FF/Nf;
Rx=(VT/IF1)-RF;
PRx=(IF1^2)*Rx;

// Display result on command window
printf("\n The armature current = %0.2f A ",Ia);
printf("\n The resistance rating = %0.1f Ohm ",Rx);
printf("\n The power rating = %0.1f W ",PRx);

//Note: Answer varies due to round-off errors
