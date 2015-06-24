//Ex:7.3
clc;
clear;
close;
n1=1.50;// core refractive index
n=1;// refractive index due to air
a=25*10^-6;// core radius in m
y=4*10^-6;// in m
A=(y/a)*(1-(y/(2*a))^2)^0.5;
B=acos(y/(2*a));
C=n1/n;
M=(16*C^2)/(%pi*(1+C)^4);
n_lat=M*(2*B-A);// coupling efficiency for multimode step index fiber
L_lat=-10*log(n_lat)/log(10);// insertion loss for lateral misalignment
dx=4*(3.14/180);// angular misalignment in radian
dl=0.02;// relative index difference
NA=n1*sqrt(2*dl);// numerical aperture
n_ang=1-(0.069/(3.14*NA));// coupling efficiency due to angular misalignment
L_ang=-10*log(n_ang)/log(10);// loss due to angular misalignment
Lt=L_lat+L_ang;// total insertion loss in dB
printf("The total insertion loss =%f dB", Lt);
printf("\n the answer is wrong in the textbook");