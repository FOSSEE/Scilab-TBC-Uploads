// Example 9.2
// Calculation of the total power at the fiber output.
// Page no 393

clc;
clear;
close;

//Given data

p=0;                // Power per channel
fl=0.2;             // Fiber loss
f=50;               // Wavelength


// The total power at the fiber output.
pc=10^(0.1*p);
tp=pc*11;
tp1=10*log10(tp);
tfl=fl*f;
to=tp1-tfl;




//Displaying results in the command window            
printf("\n The total power at the fiber output = %0.3f dBm ",to);

