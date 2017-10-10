// Example 11.5
// Computation  using linear approximation to show the gross error that occurs 
// when a linear assumption is applied to compound motors operating at overload 
// conditions
// Page No. 456

clc;
clear;
close;

// Given data
Nf=577;                  // Turns per pole of the shunt motor
IF=4.88;                 // Field current
Ns=4.5;                 
IA=450.09;               // Armature current
F2=4367.8;               // mmf
VT=240;                  // Voltage value of motor
RF=49.2;                 // Resistance of shunt motor
HP=125;
perratedload=0.854;      // Percentage rated load
Rx1=17.8;                // Value of resistance in Example 11.2


Fnet1=(Nf*IF)+ (0.90 * Ns*IA);   
Ia2=Fnet1*IA/F2;         // Armature current

If2=(F2 - Ns*Ia2*0.90)/Nf;
Rx=(VT/If2)-RF;         // External resistance required

// Error introduced by linear approximation
PE=(17.8-Rx)/17.8*100;

// Display result on command window
printf("\n External resistance required in series = %0.2f Ohm ",Rx);
printf("\n Error introduced by linear approximation = %0.1f Percent ",PE);

