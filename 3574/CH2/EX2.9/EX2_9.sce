// Example 2.9
// Computation of (a) Transformer regulation (b) Secondary voltage when the 
// load is disconnected (c) Input primary voltage 
// Page No. 69

clc;
clear;
close;

// Given data
FP=0.75                // Power-factor lagging
RPU=0.013;             // Percent resistance
XPU=0.038;             // Percent reactance
Vrated=600;            // Rated voltage of transformer
TTR=12;                // Transformer turns ratio (7200/600)
ELS=621;               // Low side voltage



// (a) Transformer regulation
Theta=acosd(FP);   
// Transformer regulation          
RegPU=sqrt( ( (RPU+FP)^2)+  ((XPU+sind(Theta))^2))-1;
// Transformer regulation in percentage
RegPU_Per=RegPU*100;

// (b) Secondary voltage when the load is disconnected 
Vnl=(RegPU*Vrated)+Vrated;

// (c) Input primary voltage 
EHS=ELS*TTR;

// Display result on command window
printf("\n Transformer regulation = %0.3f ",RegPU);
printf("\n Secondary voltage when the load is disconnected  = %0.0f V", Vnl);
printf(" \n Input primary voltage = %0.0f V",EHS);
