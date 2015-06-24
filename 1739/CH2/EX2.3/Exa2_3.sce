//Exa 2.3
clc;
clear;
close;
//Given data :
format('v',5);
delta=1;//relative refractive index difference in %
n1=1.50;//refractive index
//Formula : NA=n1*sqrt(2*delta);
NA=n1*sqrt(2*delta/100);
disp(NA,"Numerical Aperture of the fibre : ");