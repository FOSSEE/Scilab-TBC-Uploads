// Example 5.14
// Determine (a) Percent voltage unbalance (b) Expected approximate temp. rise
// if operating at rated load in a 40 deg ambient (c) Expected insulation life 
// (d) Required derating of motor to prevent shortening isulation life.
// Page No. 211

clc;
clear;
close;

// Given data
VL1=460;                 // Line voltage 1
VL2=455;                 // Line voltage 2
VL3=440;                 // Line voltage 3 
Trated=110;              // Rated temp. (from table 5.8)
hp=30;                   // Motor horsepower

// (a) Percent voltage unbalance 
Vavg=(VL1+VL2+VL3)/3;        // Average line voltage

VD1=abs(VL1-Vavg);           // Voltage deviation from the average 
VD2=abs(VL2-Vavg); 
VD3=abs(VL3-Vavg); 
VD=[VD1 VD2 VD3];          
VDMax=max(VD);               // Choose maximum value of voltage deviation
PerUBV=(VDMax/Vavg)*100;

// (b) Expected approximate temp. rise if operating at rated load in a 40 deg
PerDeltaT=2*PerUBV^2;        // Percent change in temp.
Tubv=Trated*(1+(PerDeltaT/100));

// (c) Expected insulation life 
DeltaT=Tubv-Trated;         // Percent increase in motor temp.
RL=1/(2^(DeltaT/10));       // Relative life on insulation
EL=RL*20;

// (d) Required derating of motor to prevent shortening isulation life
ReqDer=hp*0.92;

// Display result on command window
printf("\n Percent voltage unbalance  = %0.2f ",PerUBV);
printf("\n Expected approximate temperature rise  = %0.0f deg C",Tubv);
printf("\n Expected insulation life = %0.1f years",EL);
printf("\n Required derating of motor = %0.1f hp",ReqDer);

