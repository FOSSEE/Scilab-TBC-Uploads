// Example 2.6
// Computation of (a) Equivalent input impedance of the transformer and load
// combination (b) Primary current when 2400V is supplied to primary 
// (C) Voltage across the load
// Page No. 61

clc;
clear;
close;

// Given data
S=37500;               // Transformer ratings
VHS=2400;              // High side voltage
VLS=600;               // Low side voltage magnitude
ZloadLS_Mag=10;        // Low side load impedance magnitude
ZloadLS_Ang=20;        // Low side load impedance angle
Req=2.8;               // Equivalent resistance
Xeq=6;                 // Equivalent reactance
VT=2400;               // Primary voltage supplied

// (a) Equivalent input impedance of the transformer and load combination
a=VHS/VLS;                       // Ratio of High side and low side voltages 
ZloadHS_Mag=a^2*ZloadLS_Mag;     // High side load impedance magnitude
ZloadHS_Ang=ZloadLS_Ang;         // High side load impedance angle
// Polar to Complex form
ZloadHS_R=ZloadHS_Mag*cos(-ZloadHS_Ang*%pi/180); // Real part of complex number
ZloadHS_I=ZloadHS_Mag*sin(ZloadHS_Ang*%pi/180);  //Imaginary part of complex number
Zin=Req+%i*Xeq+ZloadHS_R+%i*ZloadHS_I;
// Complex to Polar form...

Zin_Mag=sqrt(real(Zin)^2+imag(Zin)^2);       // Magnitude part
Zin_Ang = atan(imag(Zin),real(Zin))*180/%pi;  // Angle part 

// (b) Primary current when 2400V is supplied to primary 
IHS_Mag=VT/Zin_Mag;                 // Primary current magnitude
IHS_Ang=0-Zin_Ang;                  // Primary current angle

// (c) Voltage across the load
EHS_Mag= IHS_Mag*a^2*ZloadLS_Mag; // Magnitude of voltage across reflected load
EHS_Ang=IHS_Ang+ZloadLS_Ang;      // Angle of voltage across reflected load

ELS_Mag=EHS_Mag/a;               // Magnitude of actual voltage across real load 
ELS_Ang=EHS_Ang;                 // Angle of actual voltage across real load 


//Display result on command window
printf("\n Equivalent input impedance of the transformer and load combination magnitude = %0.2f Ohm ",Zin_Mag);
printf("\n Equivalent input impedance of the transformer and load combination angle = %0.2f deg ",Zin_Ang);
printf("\n Primary current magnitude = %0.2f A ",IHS_Mag);
printf("\n Primary current angle = %0.2f deg ",IHS_Ang);
printf("\n Actual input voltage magnitude = %0.1f V", ELS_Mag);
printf(" \n Actual input voltage angle = %0.2f deg",ELS_Ang);

