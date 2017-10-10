// Example 12.3
// Computation of (a) Induced emf at rated load (b) No load voltage
// (c) Voltage regulation (d) What is the type of compounding?
// Page No. 492

clc;
clear;
close;

// Given data
Pload=320000;               // Shunt generator power rating
Vrated=250;                 // Shunt generator voltage rating
Rf=20.2;                    // Shunt resistance
Rrheo=7.70;                 // Shunt field rheostat value
If=8.96;                    // Field current
Iload=1280;                 // Load current
Ra=0.00817;                 // Armature resistance
Rip=0.00238;                // Resistance of interpole winding
Rse=0.00109;                // Resistance of series winding
Nf=502;                     // Turns per pole
VNL=225;                    // No load voltage

// (a) Induced emf at rated load
Iload=Pload/Vrated;          // Load current
If=Vrated/(Rf+Rrheo);        // Field current
Ia=If+Iload;                 // Armature current
Racir=Ra+Rip+Rse;
Ea=Vrated+Ia*Racir;

// (b) No load voltage
Ff=Nf*If; 

// (c) Voltage regulation
VR=(VNL-Vrated)*100/Vrated; 


// Display result on command window
printf("\n Induced emf at rated load = %0.1f V ",Ea);
printf("\n No load voltage = %0.0f V ",VNL);
printf("\n Voltage regulation = %0.0f Percent ",VR);
printf("\n The machine is overcompounded ");
