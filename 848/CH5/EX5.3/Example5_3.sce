//clear//
//Caption:Fresnel reflection, power coupled and power loss
//Example5.3
//page194
clear;
clc;
close;
n1 =3.6;//refractive index of optical source
n = 1.48; //refractive index of silica fiber
R = ((n1-n)/(n1+n))^2;
L = -10*log10(1-R);
disp(L,'Power loss in dB L =')
//Result
//Power loss in dB L = 0.8310322  
