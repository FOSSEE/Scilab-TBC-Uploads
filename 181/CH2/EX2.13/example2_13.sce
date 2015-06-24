// Ratio of reverse saturation current
// Basic Electronics
// By Debashis De
// First Edition, 2010
// Dorling Kindersley Pvt. Ltd. India
// Example 2-13 in page 95

clear; clc; close;

// Given data
b1=2.6; // Constant of calculation
b2=2.11;// Constant of calculation
sigmai1=4.32*10^-6; // Intrinsic conductivity for Si /ohm-cm
sigmai2=2.24*10^-2; // Intrinsic conductivity for Ge /ohm-cm

// Calculation
printf("For Si:\n");
Y1=((b1*sigmai1^2)/(1+b1)^2)*(2*10^4);
printf("Y_Si = %0.2e ohm-cm^2\n",Y1);
printf("For Ge:\n");
Y2=((b2*sigmai2^2)/(1+b2)^2)*(2*10^2);
printf("Y_Ge = %0.2e ohm-cm^2\n",Y2);
Y=Y2/Y1;
printf("Therefore the ratio is %0.1e",Y);


// Result
// Y_Si = 7.49*10^-8 ohm-cm^2
// Y_Ge = 2.189*10^-2 ohm-cm^2
// Ratio = 0.29*10^6