clear;
clc;

//page no.20

T = 70;//degreeF
del_p = 0.1;// in psi
sigma = 0.00498;// lb/ft
R = (sigma*2)/(del_p*144);//in ft
d = 12*2*R;// in inches
printf('Diameter of the droplet of water, d = %.4f in',d);
