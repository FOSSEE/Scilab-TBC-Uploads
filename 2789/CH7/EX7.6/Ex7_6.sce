clear;
clc;

//page no. 243

b = 3;//ft
d = 2;//ft
l = 200;//ft
h_L = 30;//ft
tau_0 = h_L*62.4*b*d/(10*l);//0.00694
printf('The resistance stress exerted between fluid and conduit walls = %.2f psf = %.3f psi',tau_0,tau_0*0.00694);
