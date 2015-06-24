clear;
clc;

//page no.37
gam1 = 0.9*62.4;
gam2 = 13.55*62.4;
l1 = 10;// feet
l2 = 15/12;// feet
p_x = gam2*l2 - gam1*l1;// psf
printf('The gauge reading = %d psf = %.2f psi',p_x,0.00694*p_x);
