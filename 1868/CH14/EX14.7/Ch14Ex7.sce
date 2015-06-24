// Scilab code Ex14.7: Pg 530 (2005)
clc; clear;
mew = 55e-02;    // Linear absoption coefficient, per m
// In equation I(x) = I_o*exp(-mew*x), replacing I(x) by I_o/2 & solving for x, we get
x = log(2)/mew;   // Half value thickness, m 
printf("\nThe half value thickness for lead = %4.2fe-02 cm", x);

// Result
// The half value thickness for lead = %1.26e-02 cm