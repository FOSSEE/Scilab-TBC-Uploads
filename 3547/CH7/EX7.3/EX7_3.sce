// Example 7.3
// Calculation of the distance.
// Page no 315

clc;
clear;
close;

//Given data
B1=2.5*10^9;                      // Mean optical power
B2=10*10^9;                      // Split loss
L1=160*10^3;                       // Total system margin



// Distance
L2=((B1/B2)^2*L1); 
L2=L2*10^-3;



//Displaying results in the command window            
printf("\n Distance = %0.0f Km ",L2);


// The answers vary due to round off error
