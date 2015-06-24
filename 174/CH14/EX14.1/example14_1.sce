// To find acceptance angle and numerical aperture
// Modern Electronic Instrumentation And Measurement Techniques
// By Albert D. Helfrick, William D. Cooper
// First Edition Second Impression, 2009
// Dorling Kindersly Pvt. Ltd. India
// Example 14-1 in Page 392


clear; clc; close;

// Given data
n_2 = 1.45; //Core index of refraction
n_1 = 1.47; //Cladding index of refraction

//Calculation
theta_c = acos(n_2/n_1);
theta_A = 2*asin(n_1*sin(theta_c));
NA = sqrt(n_1^2 -n_2^2);

printf("The critical angle of the fiber = %0.2f degree\n",theta_c*180/%pi);
printf("The acceptance angle of the fiber = %0.2f degree\n",theta_A*180/%pi);
printf("The numerical aperture of the fiber = %0.3f ",NA);

//Result
// The critical angle of the fiber = 9.46 degree
// The acceptance angle of the fiber = 27.97 degree
// The numerical aperture of the fiber = 0.242  


