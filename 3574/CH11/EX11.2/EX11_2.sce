// Example 11.2
// Computation of (a) Shunt field current (b) Armature current (c) Developed 
// torque (d) Armature current if a resistor inserted in series with the shunt 
// field circuit caused the speed to increase to 900 r/min (e) External 
// resistance required in series with the shunt field circuit to operate 
// at 900 r/min
// Page No. 450

clc;
clear;
close;

// Given data
HP=125;
perratedload=0.854;          // Percentage rated load
VT=240;                      // Voltage value of motor
RF=49.2;                     // Resistance of shunt motor
Nf=577;                      // Turns per pole of the shunt motor
Ns=4.5;
Ra=0.0172;                   // Armature resistance
RIP=0.005;                   // Interpole winding resistance
Rs=0.0023;                   // Resistance of series field winding
n1=850;                      // Speed of shunt motor
n2=900;
F2=4000;

// (a) Shunt field current

IF=VT/RF;                    // Field current

// (b) Armature current 
Pin=HP*746/perratedload;    // Input power 
IT=Pin/VT;                  // Total current
Ia1=IT-IF;

// (c) Developed torque 

Racir=Ra+RIP+Rs;
Ea=VT-Ia1*Racir;            // Armature emf
Pmech=Ea*Ia1;               // Mechanical power
TD=Pmech*5252/n1/746;            // Torque developed

// (d) Armature current if a resistor inserted in series with the shunt field 
// circuit caused the speed to increase to 900 r/min

Ia2=Ia1*n2/n1;

//(e) External resistance required in series with the shunt field circuit to 
// operate at 900 r/min
IF2=(F2-0.90*Ns*Ia2)/Nf;
Rx=(VT/IF2)-RF;


// Display result on command window
printf("\n Shunt field current = %0.2f A ",IF);
printf("\n Armature current = %0.2f A ",Ia1);
printf("\n Developed torque = %0.1f lb-ft ",TD);
printf("\n Armature current if a resistor inserted in series = %0.0f A ",Ia2);
printf("\n External resistance required = %0.1f Ohm ",Rx);


