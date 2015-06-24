clear;
clc;

// Example: 3.4
// Page: 90

printf("Example: 3.4 - Page: 90\n\n");

// Solution

//*****Data*****//
T1 = 450 + 273;// [K]
P1 = 3;// [bar]
//***************//

// Soluton(a)
// From Fig. 3.7, (Page 90)
// Since the weight remains the same, therefore, the final pressure is equal to the initial pressure.
// Therefore it is a constant pressure process.
P2 = P1;// [bar]
// Volumetric Ratio:
V2_by_V1 = 2.5/(2.5 + 2.5);
// Applying ideal gas law & P1 = P2
T2 = T1*V2_by_V1;// [K]
printf("Final Temperature of the air when the piston reaches stop is %.1f K\n",T2);

// Solution (b)
// When the piston rests ot the stops, the pressure exerted by the weight, air & the atmosphere will be different. But there will beno further decrease in volume.
// This is a constant volume process.
T3 = 273 + 30;// [K]
// Applying ideal gas law & V2 = V3
P3 = T3*P2/T2;// [bar]
printf("Pressure of air inside the cylinder is %.2f bar\n",P3);