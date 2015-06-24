clc;
//e.g 5.2
I0=1*10**-3;
Vf=0.22;
T=298;
n=1
VT=T/11600
disp('mV',VT*10**3,"VT=");
I=I0*(exp (Vf/(n*VT))-1);
disp('A',I*1,"I=");
