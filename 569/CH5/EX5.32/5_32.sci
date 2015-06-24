// calculating the sensitivity of the transducer
clc;
disp('permittivity of the air e0=8.85*10^-12')
e0=8.85*10^-12;
w=25*10^-3;
d=0.25*10^-3;
Se=-4*e0*w/d;
disp(Se,'sensitivity of the transducer (F/m)=')