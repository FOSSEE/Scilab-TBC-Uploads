//clear//
//Caption:Program to find the power dissipated in the lossless
//transmission line
//Example11.5
//page352
clc;
close;
ZL = 50-%i*75; //load impedance in ohms
Zo = 50; //characteristic impedance in ohms
R = reflection_coeff(ZL,Zo);
Pi = 100e-03; //input power in milliwatts
Pt = (1-abs(R)^2)*Pi;//power dissipated by the load
disp(R,'Reflection coefficient R =')
disp(Pt*1000,'power dissipated by the load in milli watss Pt=')
//Result
//Reflection coefficient R =   0.36 - 0.48i  
//power dissipated by the load in milli watss Pt = 64.  
