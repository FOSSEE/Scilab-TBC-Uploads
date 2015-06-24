//Example 3.4
//Levy-Mises Equation
//Page No. 91
clc;clear;close;

r_t=20;        //no unit
p=1000;        //in psi
sigma1=p*r_t;
sigma1=sigma1/1000;                     //conversion to ksi
sigma=sqrt(3)*sigma1/2;
e=(sigma/25)^(1/0.25);
e1=sqrt(3)*e/2;
printf('\nPlastic Strain = %g',e1);
