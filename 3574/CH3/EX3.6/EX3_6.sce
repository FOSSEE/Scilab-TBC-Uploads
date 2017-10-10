// Example 3.6
// Determine the percent of the total bank-current drawn by each transformer 
// Page No. 109

clc;
clear;
close;

// Given data
ZaPU_R=0.0158;          // Transformer A impedance real part
ZaPU_I=0.0301;          // Transformer A impedance imaginary part
ZbPU_R=0.0109;          // Transformer B impedance real part
ZbPU_I=0.0398;          // Transformer B impedance imaginary part
SB=200000;             // Transformer B rating
VHSA=2400;             // Voltage at the high side of transformer A
VHSB=2400;             // Voltage at the high side of transformer B
RPUA=1.64;             // Percent resistance of transformer A
XPUA=3.16;             // Percent reactance of transformer A
RPUB=1.10;             // Percent resistance of transformer B
XPUB=4.03;             // Percent reactance of transformer B



// Base impedance of transformer A
ZaPU=ZaPU_R+%i*ZaPU_I;
// Complex to Polar form...
ZaPU_Mag=sqrt(real(ZaPU)^2+imag(ZaPU)^2);      // Magnitude part
ZaPU_Ang=atan(imag(ZaPU),real(ZaPU))*180/%pi;  // Angle part 

// Base impedance of transformer B
ZbPU=ZbPU_R+%i*ZbPU_I;
// Complex to Polar form...
ZbPU_Mag=sqrt(real(ZbPU)^2+imag(ZbPU)^2);      // Magnitude part
ZbPU_Ang=atan(imag(ZbPU),real(ZbPU))*180/%pi;  // Angle part 

// Admittance of transformer A
YaPU_Mag=1/ZaPU_Mag;                // Magnitude of equivalent admittance A
YaPU_Ang=0-ZaPU_Ang;                // Angle of equivalent admittance A

// Polar to Complex form

YaPU_R=YaPU_Mag*cos(-YaPU_Ang*%pi/180); // Real part of complex number
YaPU_I=YaPU_Mag*sin(YaPU_Ang*%pi/180); //Imaginary part of complex number

// Admittance of transformer B
YbPU_Mag=1/ZbPU_Mag;                // Magnitude of equivalent admittance B
YbPU_Ang=0-ZbPU_Ang;                // Angle of equivalent admittance B
// Polar to Complex form

YbPU_R=YbPU_Mag*cos(-YbPU_Ang*%pi/180); // Real part of complex number
YbPU_I=YbPU_Mag*sin(YbPU_Ang*%pi/180); //Imaginary part of complex number

// Parallel admittance
YP=(YaPU_R-%i*YaPU_I)+(YbPU_R-%i*YbPU_I);
// Complex to Polar form...
YP_Mag=sqrt(real(YP)^2+imag(YP)^2);      // Magnitude part
YP_Ang=atan(imag(YP),real(YP))*180/%pi;  // Angle part 

IA=YaPU_Mag/YP_Mag*100;                  // Percent current drawn by transformer A 
IB=100-IA; 

// Display the result on the command window
printf("\n Percent of total bank current drawn by transformer A = %0.2f Percent ",IA);
printf("\n Percent of total bank current drawn by transformer B = %0.2f Percent ",IB);


