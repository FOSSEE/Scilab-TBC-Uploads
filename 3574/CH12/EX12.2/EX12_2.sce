// Example 12.2
// Computation of (a) No load voltage (b) Voltage regulation
// (c) Resistance setting of rheostat necessary to obtain rated voltage 
// at rated conditions
// Page No. 487

clc;
clear;
close;

// Given data
P=300000;               // Shunt generator power rating
VT=240;                 // Shunt generator voltage rating
Ra=0.00234;             // Armature winding resistance
RIP=0.00080;            // Resistance of interpole winding
Fnet=5100;              // Net mmf
Vnl=255;                // No load voltage
Vrated=240;             // Rated voltage
Nf=1020;                // Turns per pole
Vf=120;                 // Source that separately excites the generator
If=5.69;
Rf=18.1;

// (a) No load voltage
Ia=P/VT;               // Armature current
Ea=VT+Ia*(Ra+RIP);     // Armature emf
Ff=Fnet/(1-0.121);


// (b) Voltage regulation
VR=(Vnl-Vrated)*100/Vrated; 

// (c) Resistance setting of rheostat necessary to obtain rated voltage at rated conditions
If=Ff/Nf;
Rrheo=(Vf/If)-Rf; // Rheostat setting


// Display result on command window
printf("\n No load voltage = %0.0f V ",Vnl);
printf("\n Voltage regulation = %0.2f Percent ",VR);
printf("\n Resistance setting of rheostat necessary = %0.0f Ohm",Rrheo);
