//clear//
//Caption:Program to Find out Waveguide Dispersion
//Example3.8
//page110 
clear;
clc;
n2 = 1.48; //index of cladding
delta = 0.002; //index difference
Lamda = 1320e-09; //Wavelength in meters
V_dVb_dV = 0.26; //The value in square brackets for v = 2.4
C =3e08;//Enter the velocity of light in free space
Dwg_Lamda = -(((n2*delta)/C)*(1/Lamda))*V_dVb_dV
disp(Dwg_Lamda*1e06,'The waveguide dispersion in ps/nm.km');
//RESULTS
//The waveguide dispersion in ps/nm.km   =  - 1.9434343 
