// Example 2.6
// Calculation of output power
// Page no 48

clc;
clear;
close;

// Given data
Pin=1*10^-3;                  // Input power
AL1=10;                       // Attenuation 1
AL2=20;                       // Attenuation 2          
//Output power 1 and 2
Po1=Pin/10;                      
Po2=Pin/20;                          
Po1=Po1*10^3;
Po2=Po2*10^6;
//Display result on command window
printf("\n Output power(in mW) = %0.1f ",Po1);
printf("\n Output power(in microW)= %0.0f",Po2);

