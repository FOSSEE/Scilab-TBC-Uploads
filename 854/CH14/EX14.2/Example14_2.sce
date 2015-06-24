//clear//
//Caption:Program to determine the number of modes propagate in waveguide
//Example14.2
//page 499
clear;
clc;
er1 = 2.1; //dielectric constant of teflon material
er0 = 1; //dielectric constant of air
n = sqrt(er1/er0); //refractive index
Lambda_cm = 2e-03; //operating cutoff wavelength in metre
d = 1e-02; //parallel-plate waveguide separation
m = (2*n*d)/Lambda_cm;
disp(floor(m),'Number of waveguides modes propagate m =')
//Result
//Number of waveguides modes propagate m =   
//     14. 
