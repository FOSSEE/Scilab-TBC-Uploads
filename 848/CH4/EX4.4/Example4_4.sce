//clear//
//Caption: Finding Enegy gap and Wavelength
//Example4.4
//page146
clear;
close;
clc;
y =0.57;// compositional parameter of InGaAsP
Eg = 1.35-0.72*y+0.12*(y^2);
Lamda = 1.240/Eg;
disp(Eg,'Band Energy gap in ev')
disp(Lamda,'Wavelength in micro meters')
//Result
// Band Energy gap in ev  0.978588      
// Wavelength in micro meters 1.2671318  
