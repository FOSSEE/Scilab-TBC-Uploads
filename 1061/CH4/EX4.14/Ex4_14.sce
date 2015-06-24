//Ex:4.14
clc;
clear;
close;
n1=1.45;// core refractive index
y=1.5*10^-6;// wavelength in m
dl=0.03;// relative refractive index difference
a=5*10^-6;// core radius
n2=sqrt(n1^2-2*dl*n1^2);// cladding refractive index
yc=(2*%pi*a*n1*sqrt(2*dl))/(2.405);
Rcs=(20*y*(2.748-0.996*(y/yc))^-3)/(n1^2-n2^2)^1.5;// critical radius of curvature for single mode fiber
Rcs1=(3*n1^2*y)/((4*%pi)*(n1^2-n2^2)^1.5);// critical radius of curvature for multimode fiber
printf("The critical radius of curvature for single mode fiber =%f um", Rcs*10^6);
printf("\n The answer is wrong in the textbook");
printf("\n The critical radius of curvature for multimode fiber =%f um", Rcs1*10^6);