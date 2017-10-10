// Example 9.5
// Calculation of the maximum reach up to which the carrier orthogonality is preserved.
// Page no 410

clc;
clear;
close;

//Given data
d=30*10^-12;          // Delay
b=0.5*10^-8;          

// The maximum reach up to which the carrier orthogonality is preserved
L=d/b;
L=L*10^3;



//Displaying results in the command window            
printf("\n The maximum reach up to which the carrier orthogonality is preserved = %0.3f mm ",L);

// The answers vary due to round off error
