// Exa 2.21.15
clc;
clear;
close;
// Given data
q = 1.6 * 10^-19;// in C
N_D = 4.5 * 10^15;// in /cm^3
del_p = 10^21;
e=10;// in cm
A = 1;// in mm^2
A = A * 10^-14;// cm^2
l = 10;// in cm
Torque_p = 1;// in microsec
Torque_p = Torque_p * 10^-6;// in sec
Torque_n = 1;// in microsec
Torque_n = Torque_n * 10^-6;// in  sec
n_i = 1.5 * 10^10;// in /cm^3
D_n = 30;// in cm^2/sec
D_p = 12;// in cm^2/sec
n_o = N_D;// in /cm^3
p_o = (n_i)^2/n_o;// in /cm^3
disp(p_o,"Hole concentration at thermal equilibrium per cm^3 is");
l_n = sqrt(D_n * Torque_n);// in cm
disp(l_n,"Diffusion length of electron in cm is");
l_p = sqrt(D_p * Torque_p);// in cm
disp(l_p,"Diffusion length of holes in cm is");
x=34.6*10^-4;// in cm
dpBYdx = del_p *e;// in cm^4
disp(dpBYdx,"Concentration gradient of holes at distance in cm^4 is");
e1 = 1.88 * 10^1;// in cm
dnBYdx = del_p * e1;// in cm^4 check this also...........................
disp(dnBYdx,"Concentration gradient of electrons in per cm^4 is");
J_P = -(q) * D_p * dpBYdx;// in A/cm^2
disp(J_P,"Current density of holes due to diffusion in A/cm^2 is");
J_n = q * D_n * dnBYdx;// in A/cm^2
disp(J_n,"Current density of electrons due to diffusion in A/cm^2 is");
