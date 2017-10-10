// Example 11.7
// Computation of the resistance of a dynamic braking resistor that will be 
// capable of developing 500 lb-ft of braking torque at a speed of 1000 r/min.
// Page No. 464

clc;
clear;
close;

// Given data
T1=910;                          // Torque load
Pshaft=199.257*746;              // Power of shaft
eeta=0.940;                      // Efficiency
VT=240;                          // Rated voltage
T2=500;                          // Braking torque
n1=1000;                         // Windage and friction speed
n2=1150;                         // Speed of motor
Rf=52.6;                         // Field resistance
Racir=0.00707;                   // Combined armature,compensating winding and                                                               // interpolar resistance

// Resistance of a dynamic braking resistor
Pshaft=T1*n2/5252;             // Shaft power 
Pin=Pshaft*746/eeta;           // Input power
IT=Pin/VT;                     // Total current 
If=VT/Rf;                      // Field current
Ia1=IT-If;                     // Armature current
Ea1=VT-Ia1*Racir;              // Armature emf

Ia2=Ia1*T2/T1;                 // Armature current
Ea2=Ea1*n1/n2;
RDB=(Ea2-Ia2*Racir)/Ia2;       // Resistance

//Display result on command window
printf("\n Resistance of the dynamic braking resistor = %0.3f Ohm ",RDB);
