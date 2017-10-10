// exa 6.3 Pg 171
clc;clear;close;

// Given Data
P=5;// kW
N=1000;// rpm
Syt=300;// N/mm.sq.
n=2;// factor of safety
v=0.25;// Poisson's ratio

//P=2*%pi*N*T/(60*1000)
T=P/(2*%pi*N/(60*1000));// N.m
//tau = 16*T/%pi/d**3 // shear stress & sigma1 = tau;sigma2=0;sigma3=-tau
// max. shear strain energy theory, sigma1**2+sigma3**2+(sigma3-sigma1)**2=2*(Syt/n)**2 
d=(16*T*1000/%pi/sqrt(2/6*(Syt/n)**2))**(1/3);// mm (putting values of tau)
printf('shaft diameter = %.1f mm. Use %.f mm.',d,ceil(d))
