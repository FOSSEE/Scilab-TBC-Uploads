// Example 2.2
// Computation of (a) Turns ratio (b) Number of turns in each winding
// (c) Magnetizing current
// Page No. 42

clc;
clear;
close;

Ep=2400;               // Induced emf in primary winding
Es=240;                // Induced emf in primary winding
Bmax=1.5;              // Maximum flux density
A=50*10^-4;            // Cross section area
f=60;                  // Frequency
l=0.667;               // Mean length of core
H=450;                 // Magnetic field intensity


// (a) Turns ratio
Ts=Ep/Es;      

// (b) Number of turns in each winding
phimax=Bmax*A;
Np=Ep/(4.44*f*phimax);                // Number of primary windings
Ns=Np/Ts;                             // Number of secondary windings

//(c) Magnetizing current
Im=H*l/Np;


//Display result on command window
printf("\n Turns ratio = %0.0f  ",Ts);
printf("\n Number of primary windings = %0.0f turns ",Np);
printf("\n Number of secondary windings = %0.0f turns ",Ns);
printf("\n Magnetizing current = %0.2f A ",Im);
