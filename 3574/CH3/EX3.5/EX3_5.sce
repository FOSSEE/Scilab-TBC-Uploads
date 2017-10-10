// Example 3.5
// Determine (a) Rated high side current of each transformer (b) Percent of the
// total bank-current drawn by each transformer (c) Maximum load that can be 
// handled by the bank without overloading by one of the transformer
// Page No. 107

clc;
clear;
close;

// Given data
SA=75000;              // Transformer A rating
SB=200000;             // Transformer B rating
VHSA=2400;             // Voltage at the high side of transformer A
VHSB=2400;             // Voltage at the high side of transformer B
RPUA=1.64;             // Percent resistance of transformer A
XPUA=3.16;             // Percent reactance of transformer A
RPUB=1.10;             // Percent resistance of transformer B
XPUB=4.03;             // Percent reactance of transformer B



// (a) Rated high side current of each transformer
IArated=SA/VHSA;       // High side rated current transformer A
IBrated=SB/VHSB;       // High side rated current transformer B

// (b) Percent of the total bank-current drawn by each transformer
ZAper=RPUA+%i*XPUA;    // Percent impadance for transformer A
 // Complex to Polar form...
ZAper_Mag=sqrt(real(ZAper)^2+imag(ZAper)^2);      // Magnitude part
ZAper_Ang=atan(imag(ZAper),real(ZAper))*180/%pi;  // Angle part 

ZBper=RPUB+%i*XPUB;    // Percent impadance for transformer B
 // Complex to Polar form...
ZBper_Mag=sqrt(real(ZBper)^2+imag(ZBper)^2);      // Magnitude part
ZBper_Ang=atan(imag(ZBper),real(ZBper))*180/%pi;  // Angle part 

ZAbase=VHSA/IArated;                // Base impedance of transformer A
ZBbase=VHSB/IBrated;                // Base impedance of transformer A

ZeqA_Mag=ZAbase*ZAper_Mag/100;      // Magnitude of equivalent impedance A
ZeqA_Ang=ZAper_Ang;                 // Angle of equivalent impedance A

ZeqB_Mag=ZBbase*ZBper_Mag/100;      // Magnitude of equivalent impedance B
ZeqB_Ang=ZBper_Ang;                 // Angle of equivalent impedance B

YeqA_Mag=1/ZeqA_Mag;                // Magnitude of equivalent admittance A
YeqA_Ang=0-ZeqA_Ang;                // Angle of equivalent admittance A

// Polar to Complex form
YeqA_R=YeqA_Mag*cos(-YeqA_Ang*%pi/180); // Real part of complex number
YeqA_I=YeqA_Mag*sin(YeqA_Ang*%pi/180); //Imaginary part of complex number

YeqB_Mag=1/ZeqB_Mag;                // Magnitude of equivalent admittance B
YeqB_Ang=0-ZeqB_Ang;                // Angle of equivalent admittance B

// Polar to Complex form

YeqB_R=YeqB_Mag*cos(-YeqB_Ang*%pi/180); // Real part of complex number
YeqB_I=YeqB_Mag*sin(YeqB_Ang*%pi/180); //Imaginary part of complex number
YP=(YeqA_R - %i* YeqA_I)+(YeqB_R - %i* YeqB_I); // Parallel admittance

 // Complex to Polar form...
YP_Mag=sqrt(real(YP)^2+imag(YP)^2);      // Magnitude part
YP_Ang=atan(imag(YP),real(YP))*180/%pi;  // Angle part 

IA=YeqA_Mag/YP_Mag;                      // Transformer A load
IB=YeqB_Mag/YP_Mag;                      // Transformer A load
IA=IA*100;
IB=IB*100;

// (c) Maximum load that can be handled by the bank without overloading by 
// one of the transformer
Ibank=IArated/0.307;

// Display result on command window

printf("\n Rated high side current of transformer A = %0.2f A ",IArated);
printf("\n Rated high side current of transformer B = %0.3f A ",IBrated);
printf("\n Percent of total bank current drawn by transformer A = %0.0f Percent ",IA);
printf("\n Percent of total bank current drawn by transformer B = %0.0f Percent ",IB);
printf("\n Maximum load that can be handled by the bank = %0.2f A ", Ibank);

