// Example 2.5
// Computation of (a) Equivalent impedance of the transformer referred to the 
// high side (b) Input impedance of the combined transformer and load (C) Actual
// input voltage at the high side (d) Input impedance if the load is disconnected
// (e) Exciting current for the conditions in (d)
// Page No. 60

clc;
clear;
close;

// Given data
S=75000;               // Transformer ratings
VLS=240;               // Low side voltage magnitude
PF=0.96;               // Lagging power factor
VLS_Ang=0;             // Low side voltage angle
VL=240;                // Load voltage
VHS=4800;              // High side voltage
RHS=2.488;             // High side resistance
RLS=0.00600;           // Low side resistance
XHS=4.8384;            // High side reactance
XLS=0.0121             // Low side reactance
Rfe=44202;             // High side resistance
Xm=7798.6;             // High side reactance


// (a) Equivalent impedance of the transformer referred to the 
// high side 
ILS=S*1/2/VLS;                   // Delivering one-half rated load
Theta=acosd(PF);                 // Angle
ThetaI=0-Theta; 
ZloadLS_Mag=VLS/ILS;             // Low side impedance magnitude
ZloadLS_Ang=VLS_Ang-ThetaI;      // Low side impedance angle

a=VHS/VL;                       // Ratio of High side and low side voltages
Zeq_LS=RHS+a^2*RLS+%i*(XHS+a^2*XLS)

// Complex to Polar form...

Zeq_Mag=sqrt(real(Zeq_LS)^2+imag(Zeq_LS)^2);            // Magnitude part
Zeq_Ang= atan(imag(Zeq_LS),real(Zeq_LS))*180/%pi;       // Angle part 

// (b) Input impedance of the combined transformer and load
ZloadHS_Mag=a^2*ZloadLS_Mag;         // High side impedance magnitude
ZloadHS_Ang=ZloadLS_Ang;             // High side impedance angle

// Polar to Complex form

ZloadHS_R=ZloadHS_Mag*cos(-ZloadHS_Ang*%pi/180); // Real part of complex number
ZloadHS_I=ZloadHS_Mag*sin(ZloadHS_Ang*%pi/180);  // Imaginary part of complex number
Zin=ZloadHS_R+%i* ZloadHS_I+Zeq_LS;              // Input impedance
// Complex to Polar form...

Zin_Mag=sqrt(real(Zin)^2+imag(Zin)^2);            // Magnitude part
Zin_Ang= atan(imag(Zin),real(Zin))*180/%pi;       // Angle part 

// (c) Actual input voltage at the high side
IHS=ILS/a;                   // High side current
VT=IHS*Zin_Mag;

// (d) Input impedance if the load is disconnected 
X=(1/Rfe)+(1/Xm*%i); 
ZinOC=1/X;                                         // Input impedance
ZinOC_Mag=sqrt(real(ZinOC)^2+imag(ZinOC)^2);       // Magnitude part
ZinOC_Ang= atan(imag(ZinOC),real(ZinOC))*180/%pi;  // Angle part 
ZinOC_Ang=ZinOC_Ang*-1;

// (e) Exciting current for the conditions in (d)
I0_Mag=VT/ZinOC_Mag;             // Magnitude of current
I0_Ang=0-ZinOC_Ang;              // Angle of current

// Display result on command window
printf("\n Equivalent impedance of the transformer magnitude = %0.2f Ohm ",Zeq_Mag);
printf("\n Equivalent impedance of the transformer angle = %0.1f deg ",Zeq_Ang);
printf("\n Input impedance of the combined transformer and load magnitude = %0.2f Ohm ",Zin_Mag);
printf("\n Input impedance of the combined transformer and load angle = %0.2f deg ",Zin_Ang);
printf("\n Actual input voltage at the high side = %0.0f V", VT);
printf(" \n Input impedance magnitude when load is disconnected = %0.0f Ohm",ZinOC_Mag);
printf(" \n Input impedance angle when load is disconnected = %0.2f deg",ZinOC_Ang);
printf(" \n Exciting current magnitude = %0.2f A",I0_Mag);
printf(" \n Exciting current angle = %0.0f deg",I0_Ang);
