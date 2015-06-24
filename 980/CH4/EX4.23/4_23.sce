clc;
clear;
format('v',11);
Er=-110;         //as electric field has only radial component
Re=6350000;
Dr=8.85*10^-12*Er;
Q=Dr*4*3.14*Re^2;
disp(Q,"total charge dispersed on the earth(in coulomb)=");
rho_s=Q/(4*3.14*Re^2);
disp(rho_s,"surface charge density(in C/m^2)=");
