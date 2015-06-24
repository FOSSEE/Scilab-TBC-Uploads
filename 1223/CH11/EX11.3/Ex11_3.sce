clear;
clc;
//Example 11.3
V1=10;
V2=-10;
Iq=0.8*10^-3;
Rc=12000;
Ro=25000;
b=100;
Vt=0.026;
Ad=Iq*Rc/(4*Vt);
printf('\ndifferential gain=%.3f\n',Ad)
Acm=-(Iq*Rc/(2*Vt))/(1+(1+b)*Iq*Ro/(Vt*b));
printf('\ncommon mode gain=%.3f\n',Acm)
