//Book Name:Fundamentals of Electrical Engineering
//Author:Rajendra Prasad
//Publisher: PHI Learning Private Limited
//Edition:Third ,2014

//Ex15_2.sce

clc;
clear;
d=40e-2;
light_flux=5000;
absorption_factor=0.2;
transmission_factor=0.8;
F=light_flux*transmission_factor;
A=%pi*d^2;
L=F/A;
printf("\n Average luminance of the sphere=%4.1f lumens/m^2 \n",L)
//Answer vary due to roundoff error in surface area (A) calculation
