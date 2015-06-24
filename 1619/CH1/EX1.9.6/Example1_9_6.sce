//Example 1.9.6 page 1.25
//To calculate The Numerical Aperture and maximum angle of entrance of light into air...

clc;
clear;
n1 = 1.48;      // RI of core..
n2 = 1.46;      // RI of Cladding..

NA = sqrt(n1^2-n2^2);       //Numerical Aperture..
printf('The Numerical Aperture is %.3f',NA);

theta = %pi*NA^2;       // The entrance angle theta..
printf('\n\nThe Entrance angel is  %.3f degrees',theta);
