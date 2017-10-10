// Example 11.3
// Computation of Speed if the load is reduced to a value that causes the 
// armature current to be 30 percent of the rated current
// Page No.453

clc;
clear;
close;

// Given data
HP=100;
perratedload=0.896;     // Percentage rated load
VT=240;                 // Voltage value of motor
Ns=14;                  // Number of turns/pole in series field
Ra=0.0202;              // Armature resistance
RIP=0.00588;            // Interpole winding resistance
Rs=0.00272;             // Resistance of series field winding
n1=650;                 // Speed of shunt motor
Bp2=0.34;               // Air gap flux density from magnetization curve
Bp1=0.87;               // Air gap flux density from magnetization curve

// Computation of Speed if the load is reduced to a value that causes the 
// armature current to be 30 percent of the rated current

Pin=HP*746/perratedload;       // Input power
IT=Pin/VT;                     // Total current
Ia=IT;                         // Armature current

Racir=Ra+RIP+Rs;               // Resistance of armature circuit
Fnet1=Ns*Ia*(1-0.080);         // Net mmf
Fnet2=0.30*Fnet1;              // Net mmf from magnetization curve
n2=n1/((VT-(Ia*Racir))/Bp1 * Bp2/(VT-(0.30*Ia*Racir)));

// Display result on command window
printf("\n Speed of the motor = %0.0f r/min ",n2);


