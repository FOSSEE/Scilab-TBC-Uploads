// Example no. 2.1
// To find a)The numerical aperture b)The acceptanca angle c)The relative index defference
// Page no. 38

clc;
clear;

// Given data
n1=1.47;                                  // Refractive index of core
n2=1.45;                                  // Refractive index of cladding

// a)The numerical aperture
NA=(n1^2-n2^2)^(1/2);                    // Numerical aperture

// Displaying the result in command window
printf('\n The numerical aperture = %0.4f',NA);

// b)The acceptanca angle
imax=asin(NA);                          // The acceptanca angle

// Displaying the result in command window
printf('\n The acceptanca angle = %0.4f Radian',imax);

// c)The relative index defference
delta=(n1-n2)/n1;                      // Relative index defference

// Displaying the result in command window
printf('\n The relative index defference = %0.4f',delta);
