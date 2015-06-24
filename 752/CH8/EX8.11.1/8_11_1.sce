clc;
//page no 274
//prob no. 8.11.1
//RC load ckt for diode detector with c=1000pF in paralel with R=10Kohm
fm=10*10^3;//modulation freq
c=1000*10^-12;R=10*10^3;
Yp=(1/R)+((%i)*2*(%pi)*fm*c);//admittance of RC load
disp(Yp);
Zp=1/sqrt((real(Yp)^2)+(imag(Yp)^2));
disp(Zp);
//Determination of max modulation index
m=Zp/R;
disp(m,'The max modulation index is');