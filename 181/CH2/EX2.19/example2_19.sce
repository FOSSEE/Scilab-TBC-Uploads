// Factor to be multiplied with reverse saturation current
// Basic Electronics
// By Debashis De
// First Edition, 2010
// Dorling Kindersley Pvt. Ltd. India
// Example 2-19 in page 98

clear; clc; close;

// Given data
T1=25; // Initial temperature for Ge in degree celcius
T2=70; // Final temperature for Ge in degree celcius
T_2=150; // Final temperature for Si in degree celcius

// Calculation
printf("(a)Let the reverse saturation current for Ge at 25 degrees be Io(25)\n");
A=2^((T2-T1)/10);
printf("The factor to be multiplied when temperature is raised to 70 degrees is %0.0f\n",A);
printf("Therefore, Io(70) = %0.0f*Io(25)\n\n",A);
printf("(b)Let the reverse saturation current for Si at 25 degrees be Io(25)\n");
A1=2^((T_2-T1)/10);
printf("The factor to be multiplied when temperature is raised to 150 degrees is %0.0f\n",A1);
printf("Therefore, Io(150) = %0.0f*Io(25)",A1);

// Results
// (a) Io(70) = 23*Io(25)
// (b) Io(150) = 5793*Io(25)