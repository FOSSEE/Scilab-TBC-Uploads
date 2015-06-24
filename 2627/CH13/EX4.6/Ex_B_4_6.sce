//Ex 4.6
clc;clear;close;;
format('v',6)
//Part (a)
K1=5;//kHz/V
//vm(t)=2*cos(2*p*2000*t);
Vm=2;//V
fm=2000;//Hz
delta_f=K1*Vm;//kHz
disp(delta_f,"(a) Pak frequency deviation(kHz)");
m=delta_f*1000/fm;//modulation index
disp(m,"(a) Modulation index");
//Part (b)
K=2.5;//rad/V
//vm(t)=-cos(2*p*2000*t);
fm=2000;//Hz
m=K*Vm;//rad(Peak phase shift)
disp(m,"(b) Peak phase shift(rad)");
