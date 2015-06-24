clear;
clc;

//page no. 52

m = -0.229;//slope
a_z = 1.96;// ft/sec^2
a_x = 4*a_z;// ft/sec^2
a = sqrt(a_x^2 + a_z^2);// ft/sec^2
p = integrate('-(32.2 + a_z)*(62.4/32.2)','z',0,-2.75);
printf('p = %.1f psf',p);

//there is an error in the answer given in textbook
