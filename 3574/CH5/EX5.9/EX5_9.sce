// Example 5.9
// Determine (a) Shaft r/min (b) Slip 
// Page No. 194

clc;
clear;
close;

// Given data
F1=60;             // Rated frequency
N=4;               // Number of poles
F2=50;             // New frequency
ns=1770;           // Rated speed

// (a) Shaft r/min
ns60=120*F1/N;       // Speed at rated ferquency 
ns50=120*F2/N;       // Speed at 50 Hz frequency
s60=(ns60-ns)/ns60;  // Slip at 60 Hz frequency

// Using eq. (5.16) and by solving..s50=29.251/nr50
// Using eq. (4.3) and solving for nr50 we get the quadratic equation..
// Using various values of quadratic equations, we have
a=1;
b=-1500;
c=43876.5;
r1=(-b+sqrt(b^2-4*a*c))/(2*a); // Root 1

r2=(-b-sqrt(b^2-4*a*c))/(2*a); // Root 2
// Answer 'r2' is not valid

// (b) Slip 
s50=(ns50-r1)/ns50;

// Display result on command window
printf("\n Shaft speed = %0.0f r/min",r1);
printf("\n Slip = %0.3f ",s50);

