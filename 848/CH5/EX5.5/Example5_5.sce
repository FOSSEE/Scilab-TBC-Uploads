//clear//
//Caption:Loss between  single mode fibers due to Lateral misalignment
//Example5.5
//page 211
clear;
clc;
close;
V = 2.405; //normalized frequency
n1 =1.47; //core refractive index
n2 = 1.465; //cladding refractive index
a = (9/2)*10^-06; //core radii in meters
d = 1e-06; //lateral offset in meters
W = a*(0.65+1.619*V^(-1.5)+2.879*V^-6);
Lsm = -10*log10(exp(-(d/W)^2));
disp(W,'mode-field diameter in meters W =');
disp(Lsm,'Loss between single mode optical fibers due to lateral offset Lsm =')
//Result
//mode-field diameterin meters W =  0.0000049  
//Loss between single mode optical fibers due to lateral offset Lsm = 0.1775797 
