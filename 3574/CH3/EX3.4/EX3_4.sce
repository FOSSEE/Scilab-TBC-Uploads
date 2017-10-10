// Example 3.4
// Determine (a) Circulating current in the paralleled secondaries 
// (b) Circulating current as a percent of the rated current of transformer A 
// (c) Percent difference in secondary voltage that caused the circulating current
// Page No. 104

clc;
clear;
close;

// Given data
S=100000;              // Transformer A and B rating 
VLSA=460;              // Voltage at the low side of transformer A
VLSB=450;              // Voltage at the low side of transformer A
RPUA=0.0136;           // Percent resistance of transformer A
XPUA=0.0350;           // Percent reactance of transformer A
RPUB=0.0140;           // Percent resistance of transformer B
XPUB=0.0332;           // Percent reactance of transformer B



// (a) Circulating current in the paralleled secondaries 
IA= S/VLSA;               // Rated low side current for transformer A
IB= S/VLSB;               // Rated low side current for transformer B
ReqA=RPUA*VLSA/IA;        // Equivalent resistance of transfomer A
ReqB=RPUB*VLSB/IB;        // Equivalent resistance of transfomer B
XeqA=XPUA*VLSA/IA;        // Equivalent reactance of transfomer A
XeqB=XPUB*VLSB/IB;        // Equivalent reactance of transfomer B

// Impedance of the closed loop formed by two secondaries is
Zloop=ReqA+%i*XeqA+ReqB+%i*XeqB; 
// Complex to Polar form...
Zloop_Mag=sqrt(real(Zloop)^2+imag(Zloop)^2); // Magnitude part
Zloop_Ang=atan(imag(Zloop),real(Zloop))*180/%pi; // Angle part 

Icirc_Mag=(VLSA-VLSB)/Zloop_Mag; // Circulating current magnitude
Icirc_Ang=0- Zloop_Ang;          // Circulating current angle

// (b) Circulating current as a percent of the rated current of transformer A
IcircA=Icirc_Mag*100/IA;

// (c) Percent difference in secondary voltage that caused the circulating current
PD=(VLSA-VLSB)*100/VLSB;

// Display result on command window

printf("\n Circulating current magnitude = %0.1f A ",Icirc_Mag);
printf("\n Circulating current angle = %0.1f deg ",Icirc_Ang);
printf("\n Circulating current as a percent of the rated current = %0.1f Percent ",IcircA);
printf("\n Percent difference in secondary voltage = %0.1f Percent ",PD);

