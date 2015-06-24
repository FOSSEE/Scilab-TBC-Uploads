//Example 12.4
//Stress Concentration of Fatigue
//Page No. 404
clc;clear;close;

rho=0.0004;            //no unit  
S_u=190;            //in ksi
S_u=S_u*1000;           //conversion to psi
M=200;               //in inches-lb
Pm=5000;            //in lb
D=0.5;                //in inches
dh=0.05;               //in inches
r=dh/2;
Kt=2.2;               //no unit
Kf=1+(Kt-1)/(1+sqrt(rho/r));
q=(Kf-1)/(Kt-1);
A=%pi/4*D^2;
sigma_m=Pm/A;
I=%pi/64*D^4;
sigma_a=Kf*((M*D)/(2*I));
sigma_max=sigma_a+sigma_m;
sigma_min=sigma_a-sigma_m;
sigma_e=S_u/2;
sigma_a1=sigma_e/Kf*(1-sigma_m/S_u);
printf('\nMean Stress = %g psi\nFluctuating Bending Stress = %g psi\nEffective Maximum Stress = %g psi\nEffective Minimum Stress = %g psi\nsigma_a = %g psi\n\n\nNote: Calculation Errors in the book',sigma_m,sigma_a,sigma_max,sigma_min,sigma_a1);
