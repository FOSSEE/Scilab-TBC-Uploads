//
clc;
R=10^6;
C=2500*10^-12;
tc=R*C;
t=2*10^-3;
d=100*10^-12;
F=0.1;
el=10^3*{d*F*[exp(-t/tc)]/C};
disp(el,'voltage just before t=2ms (mV)')
el_after=10^3*{d*F*[exp(-t/tc)-1]/C};
disp(el_after,'voltage just after t=2ms (mV)')
disp('when t=10ms')
t=10*10^-3;
T=2*10
e_10=10^3*{d*F*[exp((-T/tc)-1)]*{exp(-(t-T))/tc}/C}
disp(e_10,'output voltage 10 ms after the application of impulse(mV) ')