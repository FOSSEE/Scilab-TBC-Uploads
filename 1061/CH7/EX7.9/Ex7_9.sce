//Ex:7.9
clc;
clear;
close;
n1=1.46;// core refractive index
n=4;// refractive index due to air
x=%pi/180;
A=(16*n1^2)/((1+n1)^4);
B=n*x;
n_ang=10^(-0.06);// angular coupling efficiency
NA=B/((%pi)*(1-(n_ang/A)));// numerical aperture
printf("The numerical aperture =%f", NA);