//Example 12.1
//Mean Stress
//Page No. 387
clc;clear;close;

sigma_u=158;             // in ksi
sigma0=147;             // in ksi
sigma_e=75;             // in ksi
l_max=75;             // in ksi
l_min=-25;             // in ksi
sf=2.5;                //no unit
sigma_m=(l_max+l_min)/2;
sigma_a=(l_max-l_min)/2;
sigma_e=sigma_e/sf;
A=sigma_a/sigma_e+sigma_m/sigma_u;
D=sqrt(4*A/%pi);
printf('\nBar Diameter = %g in',D);
