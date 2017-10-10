// Example 6.41
// Calculation of maximum bandwidth
// Page no 496

clc;
clear;
close;

//Given data
t=5*10^-12                         // Electron transit time
G=70;                              // Gain of the device



// Maximum bandwidth
Bm=1/(2*%pi*t*G);
Bm=Bm*10^-6;



//Displaying results in the command window            
printf("\n Bandwidth(in MHz) = %0.1f  ",Bm);

// The answers vary due to round off error
