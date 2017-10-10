// Example 10.8
// Computation of new armature current
// Page No. 420

clc;
clear;
close;

// Given data
Rf=120;                // Resistance of inserted resistor
VT=240;                // Rated voltade of the machine
IT=91;                 // Total current
Racir=0.221;           // Armature sircuit resistance
n2=634;                // New speed after resistor was inserted
n1=850;                // Rated speed OF THE MACHINE
Rx=2.14;               // Resistance inserted in series witH armature

// New armature current

If=VT/Rf;           // Resistor current
Ia1=IT-If;          // Armature current
Ia2=(VT-(n2/n1)*(VT-Ia1*Racir))/(Racir+Rx);


// Display result on command window
printf("\n New armature current = %0.2f A ",Ia2);


