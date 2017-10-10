// Example 2.13
// Determine (a) Efficiency at rated load and 80% power factor 
// (b) 70% load and 80% power factor
// Page No. 75

clc;
clear;
close;

// Given data
FP=0.80;                    // Power factor 
PcorePU=0.0045;             // Percentage core loss
RPU=0.0146;                 // Percentage resistance
Sload=70;                   // 70% rated load
Srated=100;                 // 100% rated load

// (a) Efficiency at rated load and 80% power factor 
etarated=FP/(FP+RPU+PcorePU);

// (b) Efficiency at 70% load and 80% power factor
SPU=Sload/Srated;
IPU=SPU;                                 // I_load is proportional to S_load
eta=(SPU*FP)/(SPU*FP+PcorePU+IPU^2*RPU)  // Efficiency

// Display result on command window
printf("\n Efficiency at rated load = %0.3f ", etarated);
printf("\n Efficiency at 70 percent load = %0.3f ",eta);
disp('There is very little change in efficiency');
