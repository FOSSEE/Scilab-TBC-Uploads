//clear//
//Caption:Loss between single mode fibers due to angular misalignment
//Example5.6
//page212
clear;
clc;
close;
clear;
clc;
close;
V = 2.405; //normalized frequency
n1 =1.47; //core refractive index
n2 = 1.465; //cladding refractive index
a = (9/2)*10^-06; //core radii in meters
d = 1e-06; //lateral offset in meters
W = a*(0.65+1.619*V^(-1.5)+2.879*V^-6);//mode-field diameter
teta = 1; //in degrees
teta = 1/57.3; //in radaians
Lambda = 1300e-09;//wavelength in meters
Lsm_ang = -10*log10(exp(-(%pi*n2*W*teta/Lambda)^2));
disp(Lsm_ang,'Loss between single mode fibers due to angular misalignment Lsm_ang =')
//Result
//Loss between single mode fibers due to angular misalignment Lsm_ang = 0.4054658  
