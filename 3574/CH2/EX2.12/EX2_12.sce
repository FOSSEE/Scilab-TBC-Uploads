// Example 2.12
// Computation of (a) Core loss (b) Core loss if operated at rated current and
// 0.860 power factor from 375V, 50 HZ supply (c) Efficiency for condition in (b)
// (d) Efficiency if the load is disconnected
// Page No. 72

clc;
clear;
close;

// Given data
Srated=50000;              // Transformer power rating
VHS=450;                   // High side voltage 
RPU=0.0125;                // Percent resistance 
XPU=0.0224;                // Percent reactance 
FP=0.86;                   // Power factor lagging
eta=0.965                  // Efficiency
Hl=0.71                    // Hysteresis loss
Vt60=375                   // Supply voltage
f1=60;                     // Transformer frequency
f2=50;                     // Supply frequency


// (a) Core loss 
IHS=Srated/VHS;
// Using high-side values
Req_HS=RPU*VHS/IHS;            // Equivalent high-side resistance
Pout=Srated*FP;                // Output power
Pin=Pout/eta;                  // Input power
Pcore=Pin-Pout-(IHS^2*Req_HS)  // Core loss

// (b) Core loss if operated at rated current and 0.860 power factor from 
// 375V, 50 HZ supply
Ph60=Hl*Pcore;              // Hysteresis loss
Pe60=Pcore-Ph60;            // Eddy current loss
Pe50=Pe60*(Vt60/VHS)^2;     // Eddy current loss
Ph50=Ph60*(f2/f1)*(Vt60/VHS*f1/f2)^1.6; 
Pcore50=Pe50+Ph50;          // Core loss

// (c) Efficiency
Pout=Vt60*IHS*FP;           // Output power
etanew=Pout/(Pout+Pcore50+IHS^2*Req_HS);

// (d) Efficiency with the load is disconnected

// Display result on command window
printf("\n Core loss = %0.1f W", Pcore);
printf("\n Core loss at 375V, 50 Hz supply = %0.2f W",Pcore50);
printf("\n Efficiency = %0.1f Percent", etanew*100);
printf("\n Efficiency = 0 with the load is disconnected as Pout=0" )
