//Ex:4.5
clc;
clear;
close;
n1=1.46;// core refractive index
dl=0.03;// relative refractive index difference
y=0.85*10^-6;// operating wavelength in m
a=4*10^-6;// core radous in m
n2=sqrt(n1^2-2*dl*n1^2);// cladding refractive index
Rc=(3*n1^2*y)/(4*%pi*(n1^2-n2^2)^1.5);// critical radius of curvature for multimode fiber
Dl=0.003;// relative refractive index difference
N2=sqrt(n1^2-2*Dl*n1^2);// 
yc=(2*%pi*a*n1*(2*Dl)^0.5)/2.405;// cut off wavelength in m
y1=1.55*10^-6;// operating wavelength in m
Rcs=(20*y1*(2.748-0.996*(y1/yc))^-3)/(0.005)^1.5;// critical radius of curvature for a single mode fiber
printf("The critical radius of curvature for multimode fiber =%f um", Rc*10^6);;
printf("\n The critical radius of curvature for a single mode fiber =%f um", Rcs*10^3);