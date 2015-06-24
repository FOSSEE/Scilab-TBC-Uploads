// Scilab code Ex6.4: Pg:248 (2008)
clc;clear;
A = 60;    // Angle of prism, degree
i_p = 60;    // Polarizing angle, degree
mu = tand(i_p);    // Refractive index of glass
// Since mu = sind((A + d_m)/2)/sind(A/2), solving for d_m
d_m = 2*asind(mu*sind(A/2)) - A;    // Angle of minimum deviation, degree
printf("\nThe angle of minimum deviation = %2d degree", ceil(d_m));

// Result 
// The angle of minimum deviation = 60 degree
// The answer is given wrongly in the textbook