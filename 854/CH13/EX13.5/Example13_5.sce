//clear//
//Caption:Program to find the required index for the coating and its thickness
//Example13.5
//page451
clear;
clc;
etta1 = 377;//intrinsic impedance of free space in ohms
n3 = 1.45; //refractive index of glass
etta3 = etta1/n3;//intrinsic impedance in glass
etta2 = sqrt(etta1*etta3);//intrinsic impedance in ohms for coating
n2 = etta1/etta2; //refractive index of region2
Lambda0 = 570e-09;//free space wavelength
Lambda2 = Lambda0/n2; //wavelength in region2
l = Lambda2/4; //minimum thickness of the dielectric layer
disp(l*1e06,'minimum thickness of the dielectric layer in um =')
//Result
//minimum thickness of the dielectric layer in um =   
//     0.1183398   
