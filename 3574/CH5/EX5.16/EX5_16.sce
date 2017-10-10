// Example 5.16
// Determine (a) R1, R2, X1, X2, XM and the combined core, friction and windage 
// loss (b) Express the no-load current as a percent of rated current
// Page No. 218

clc;
clear;
close;

// Given data
P3ph=2573.4;                 // 3-ph power of induction motor
Vline=36.2;                  // Line voltage
Iline=58;                    // Line current
P3phnl=4664.4;               // No load power
Vlinenl=460;                 // No load line volatge
Ilinenl=32.7;                // No load line current
Vdc=12;                      // DC voltage
Idc=59;                      // DC current
F1=60;                       // Rated frequency
F2=15;                       // Test frequency
Irated=57.8;                 // Rated current
 
// (a) R1, R2, X1, X2, XM and the combined core, friction and windage loss
Pbr15=P3ph/3;                // Power/phase
Vbr15=Vline/sqrt(3);         // Voltage/phase
Ibr15=Iline;
PNL=P3phnl/3;                // No load power/phase
VNL=Vlinenl/sqrt(3);         // No load voltage/phase
INL=Ilinenl;                 // No load current/phase

// Determination of R1
Rdc=Vdc/Idc;
R1=Rdc/2;

// Determination of R2
Zbr15=Vbr15/Ibr15;          // Impedance
Rbr15=Pbr15/Ibr15^2;
R2=Rbr15-R1;

// Determination of X1 and X2
Xbr15=sqrt(Zbr15^2-Rbr15^2);
Xbr60=Xbr15*(F1/F2);
X1=0.4*Xbr60;               // From Table 5.10
X2=0.6*Xbr60;

// Determination of XM
SNL=VNL*INL;
QNL=sqrt(SNL^2-PNL^2);
XNL=QNL/INL^2;
XM=XNL-X1;

// Determination of combined friction, windage and core loss
Ploss=PNL-(INL^2*R1);

// (b) No-load current as a percent of rated current
PerINL=INL*100/Irated;

// Display result on command window
printf("\n Motor resistance 1 = %0.3f Ohm/phase",R1);
printf("\n Motor reactance 1 = %0.4f Ohm/phase",X1);
printf("\n Motor resistance 2 = %0.3f Ohm/phase",R2);
printf("\n Motor reactance 2 = %0.4f Ohm/phase",X2);
printf("\n Reactance of motor = %0.2f Ohm/phase",XM);
printf("\n Combined friction, windage and core loss = %0.0f W/phase",Ploss);
printf("\n No-load current as a percent of rated current = %0.1f Percent",PerINL);
