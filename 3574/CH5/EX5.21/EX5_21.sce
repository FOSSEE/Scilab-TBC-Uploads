// Example 5.21
// Computation of Inductance and voltage rating of each series connected 
// inductor required to limit the starting current to approximately 2*Irated. 
// Page No. 236

clc;
clear all;
close;

// Given data
KVA=6.7;                    // Average locked rotor KVA/hp
hp=7.5;                     // Motor horsepower
Vline=208;                  // Line voltage
I=48;                       // Total current
Rlr=0.294;                  // Locked rotor resistance
Xlr=0.809;                  // Locked rotor impedance
f=60;                       // Frequency of motor

// Corresponding approximate load current
Ilr=KVA*1000*hp/(sqrt(3)*Vline);      
Vphase=Vline/sqrt(3);            // Voltage/phase

// Applying ohm's law to one phase
Zlr=Vphase/Ilr;               // Impedance
Xex=sqrt((Vphase^2/I^2)-(Rlr^2))-Xlr;
L=Xex/(2*%pi*f);
L=L*10^03;
VXl=I*Xex;

// Display result on command window
printf("\n The inductance of each series connected inductor = %0.2f mH ",L);
printf("\n The voltage rating of each series connected inductor = %0.1f V ",VXl);


