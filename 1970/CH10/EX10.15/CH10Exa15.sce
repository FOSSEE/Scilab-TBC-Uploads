// Scilab code Exa10.15 : : Page-459 (2011)
clc; clear;
k_d = 2.02e+30;        // The value of k for deutron
k_t = 2.02e+30;        // The value of k for triton
theta = 23*3.14/180;        // Angle, radiams
q = sqrt (k_d+k_t-2*k_t*cos(theta))*10^-15;        // the value of q in femto metre
R_0 = 1.2;        // Distance of closest approach, femto metre
A = 90;            // Mass number of Zr-90
z = 4.30;            // Deutron size, femto metre
R = R_0*A^(1/3)+1/2*z;        // Radius of the nucleus, femto metre
l = round(q*R);            // Orbital angular momentum
I = l+1/2                    // Total angular momentum
printf("\nThe total angular momentum transfer = %3.1f ", I);

// Result
// The total angular momentum transfer = 4.5  