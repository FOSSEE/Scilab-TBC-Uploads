//Ex 3.10
clc;clear;close;
format('v',5);
Pr=750;//W(rated)
Vr=100;//V(rated)
V=230;//V(Supply voltage)
f=60;//Hz
VC=sqrt(V^2-Vr^2);//V(Voltage across capacitor)
Ir=Pr/Vr;//A(Rated current)
C=Ir/(2*%pi*f*VC)*10^6;//micro F
disp(C,"(a) Capacitance required(micro F)");
fi=acosd(Vr/V);//degree
disp(fi,"(b) Phase angle(degree)");
