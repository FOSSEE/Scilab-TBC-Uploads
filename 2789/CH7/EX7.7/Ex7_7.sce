clear;
clc;

//page no.244

h_L = 30;//ft
l = 200;//ft
d = 2;//ft
r = 8;//in
//part (a)
tau_0 = h_L*62.4/(d*l);

//part(b)
tau = (0.5*r/12)*(tau_0*0.00694);
printf('Part(a): Shear stress = %.2f psf = %.4f psi ',tau_0,tau_0*0.00694);
printf('\n Part(b): Shear stress = %.4f psi ',tau);
