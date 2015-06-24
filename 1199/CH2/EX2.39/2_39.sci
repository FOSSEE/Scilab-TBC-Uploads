// 2.39
clc;
disp('permittivity of the air e0=8.85*10^-12')
e0=8.85*10^-12;
w=25*10^-3;
d=0.25*10^-3;
Se=-4*e0*w/d;
printf("sensitivity of the transducer=%.2f F/m",Se)
