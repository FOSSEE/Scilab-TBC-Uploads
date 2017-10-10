// Example 10.4
// Computation of percentage reduction in field flux required to obtain a 
// speed of 1650 r/min while drawing an armature current of 50.4 A.
// Page No. 405

clc;
clear;
close;

// Given data
VT=240;               // Induced emf
R=95.2;               // Shunt field resistance
IT=72;                // Total current
Ra=0.242;             // Armature resistance
Ia2=50.4;             // Armature current
n1=850;               // Rated speed of shunt motor
n2=1650;              // Speed of armature winding


// Percentage reduction in field flux

If1=VT/R;             // Field current
Ia1=IT-If1;           // Armature current
Ea1=VT-Ia1*Ra;        // Armature emf
Ea2=VT-Ia2*Ra;
phip2=(n1/n2)*(Ea2/Ea1);
PerRed=(phip2-1)*100;



// Display result on command window
printf("\n Percentage reduction in field flux = %0.1f Percent ",PerRed);


