//clear//
//Caption:Program to determine the cutoff frequency for the first waveguide mode(m=1)
//Example14.1
//page 499
clear;
clc;
er1 = 2.1; //dielectric constant of teflon material
er0 = 1; //dielectric constant of air
d = 1e-02; //parallel plate waveguide separation in metre
C = 3e08; //free space velocity in m/sec
n = sqrt(er1/er0); //refractive index
fc1 = C/(2*n*d);
disp(fc1,'cutoff frequency for the first waveguide mode in Hz fc1 =')
//Result
//cutoff frequency for the first waveguide mode in Hz fc1 =   
//     1.035D+10  
