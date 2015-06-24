// To find elapsed time
// Modern Electronic Instrumentation And Measurement Techniques
// By Albert D. Helfrick, William D. Cooper
// First Edition Second Impression, 2009
// Dorling Kindersly Pvt. Ltd. India
// Example 14-4 in Page 401


clear; clc; close;

// Given data
n = 1.55; //index of refraction 
c = 3*10^8; //speed of light in m/s
d = 1.4*10^3; //Distance in m

//Calculations
v = c/n;
t = d/v;
printf("t = %0.1e s",t);
disp('Since twice the time to reach the break is required for the reflection to arrive at the reflectometer,' )
printf("Hence the total elapsed time = %0.3e s",2*t);

//Result
// t = 7.2e-006 s 
// Since twice the time to reach the break is required for the reflection to arrive at the reflectometer,   
// Hence the total elapsed time = 1.447e-005 s 
