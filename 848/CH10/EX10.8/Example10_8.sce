//clear//
//Caption:Program to Waveguide Length difference
//Example10.8
//Page 357
clear;
close;
clc;
delta_Lambda = 0.08e-09; //wavelength spacing in nano meters
Lambda = 1550e-09; //wavelength in meters
neff = 1.5; //effective refractive index in the waveguide
C =3e08; //free space velocity
delta_v1 = 10e09; //frequency spacing 1
delta_v2 = 130e09; //frequency spacing 2
delta_L1 = C/(2*neff*delta_v1);
delta_L2 = C/(2*neff*delta_v2);
disp(delta_L1*1e03,'waveguide length difference in milli meters')
disp(delta_L2*1e03,'waveguide length difference in milli meters')
//Result
//waveguide length difference in milli meters   
//     10.  
//waveguide length difference in milli meters   
//    0.7692308  
