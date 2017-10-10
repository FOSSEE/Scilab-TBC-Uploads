// Example 2.11
// Computation of transformer regulation
// Page No. 71

clc;
clear;
close;

// Given data
S=10;                  // Transformer actual rating 10KVA
Srated=25;             // Rated 25KVA
PF=0.65;               // Power factor lagging
RPU=0.0124;            // Percent resistance drop
XPU=0.014;             // Percent reactance drop

// Transformer regulation
SPU=S/Srated;
SPU=SPU*100;
Theta=acosd(PF);
// Transformer regulation          
RegPU=sqrt( ( (RPU*SPU+PF)^2)+  ((XPU*SPU+sind(Theta))^2))-1;
// Transformer regulation in percentage
RegPU_Per=RegPU*100;

// Display result on command window
printf("\n Transformer regulation = %0.3f ",RegPU);
printf("\n Transformer regulation in percentage= %0.1f ",RegPU_Per);

// Answer varies due to round off errors
