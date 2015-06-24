//clear//
//Caption: Finding Critical angle, numerical aperture, acceptance angle
//Example 2.2
//page 45
clear;
close;
clc;
n1 = 1.48; //core refractive index
n2 = 1.46; //cladding index
phic = asin(n2/n1)*57.3;
NA = sqrt(n1^2 - n2^2);
phi0 = asin(NA)*57.3;
disp(phic,'Critical anlge')
disp(NA,'numerical aperture')
disp(phi0,'acceptance angel in air')
//Result
//Critical anlge   
//     80.575927  
//numerical aperture   
//    0.2424871  
//acceptance angel in air   
//   14.034412
