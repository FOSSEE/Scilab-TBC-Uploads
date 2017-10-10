// Example 10.11
// Determine (a) Electrical losses (b) Rotational losses (c) Efficiency
// Page No. 430

clc;
clear;
close;

// Given data
T=124;                    // Hp rating of motor
Rf=32.0;                  // Field resistance
VT=240;                   // Rated voltade of the machine
IT=420;                   // Total current
Ra=0.00872;               // Armature resistance
RipRcw=0.0038;            // Resistance of interpolar winding and compensating windings
Pout=92504;
Vb=2.0;                   // Rated speed of the machine
Racir=Ra+RipRcw;

// (a) Electrical losses 

If=VT/Rf;                  // Field current
Ia=IT-If;                  // Armature current
Pf=If^2*Rf;                // Field power
Paipcw=Ia^2*(Ra+RipRcw);
Pb=Vb*Ia;                  // Brush loss power
Plosses=Pf+Paipcw+Pb;      // Total power loss

// (b) Rotational losses

Ea=VT-(Ia*Racir)-Vb;         // Armature emf      
Pmech=Ea*Ia;               // Mechanical power
Pshaft=T*746;              // Shaft power 
Protational=Pmech-Pshaft;

// (c) Ffficiency

eeta=Pout/(VT*IT)*100;

// Display result on command window

printf("\n Electrical losses = %0.1f W ",Plosses);
printf("\n Rotational losses = %0.0f W ",Protational);
printf("\n Efficiency = %0.1f Percent ",eeta);




