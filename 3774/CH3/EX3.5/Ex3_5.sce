// exa 3.5 Pg 67

clc;clear;close;

// Given Data
Syt=760;// MPa
M=15;// kN.m
T=25;//kN.m
n=2.5;// factor of safety
E=200;// GPa
v=0.25;// Poisson's ratio

sigma_d=Syt/n;// MPa
// let d is diameter of the shaft
sigma_b_into_d_cube=32*M*10**6/%pi;// N/mm.sq. (where sigma_b_into_d_cube = sigma_d*d**3)
tau_into_d_cube=16*T*10**6/%pi//d**3;// N/mm.sq. (where tau_into_d_cube = tau*d**3)
sigma1_into_d_cube=sigma_b_into_d_cube/2+1/2*sqrt(sigma_b_into_d_cube**2+4*tau_into_d_cube**2) ; // (where sigma1_into_d_cube=sigma1*d**3)
sigma2_into_d_cube=sigma_b_into_d_cube/2-1/2*sqrt(sigma_b_into_d_cube**2+4*tau_into_d_cube**2); // (where sigma2_into_d_cube=sigma2*d**3)
printf('\n (i) Maximum shear stress theory')
tau_max_into_d_cube=(sigma1_into_d_cube-sigma2_into_d_cube)/2; //(where tau_max_into_d_cube = tau_max*d**3)
d=(tau_max_into_d_cube/(sigma_d/2))**(1/3);//mm
printf('diameter of shaft, d=%.1f mm or %.f mm',d,ceil(d))

printf('\n (ii) Maximum strain energy theory')
//sigma1**2+sigma2**2-2*v*sigma1*sigma2=sigma_d**2
d=((sigma1_into_d_cube**2+sigma2_into_d_cube**2-2*v*sigma1_into_d_cube*sigma2_into_d_cube)/sigma_d**2)**(1/6)
printf('diameter of shaft, d=%.1f mm',d)
printf('\n Adopt d=100mm')
