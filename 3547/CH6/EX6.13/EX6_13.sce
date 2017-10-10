// Example 6.13
// Calculation of the geometric mean of the facet reflectivity R
// Page no 296

clc;
clear;
close;

//Given data
Gm=20;
G1=5;

// The geometric mean of the facet reflectivity R
Gmax=10^(Gm/10);                    // Peak Gain
Gs=10^(G1/10);                      // Single pass gain
R=(sqrt(Gs)-10)/(sqrt(Gs)-Gs*10);




//Displaying results in the command window            
printf("\n The geometric mean of the facet reflectivity R = %0.3f  ",R);



