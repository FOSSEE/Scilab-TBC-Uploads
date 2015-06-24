clear;
clc;

//page no.32
T = 68;//degreeF
p = 10;// psi
d = 15;// feet
rho = 1.59;//specific gravity
gam = rho*62.4;//lb/cuft
p1 = gam*d + p*144;//psf
printf('p1 = %d psf = %.1f psi ',p1,p1*0.00694);

//there is an error in the answer given in the textbook
