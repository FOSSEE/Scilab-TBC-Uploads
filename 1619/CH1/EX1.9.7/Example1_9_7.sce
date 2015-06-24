//Example 1.9.7 page 1.26
//To find the Numerical Aperture...

clc;
clear;

del = 0.007;        // relative refractive index difference 
n1 = 1.45;      // RI of core...
NA = n1* sqrt((2*del));
printf('The Numerical Aperture is %.4f',NA);
