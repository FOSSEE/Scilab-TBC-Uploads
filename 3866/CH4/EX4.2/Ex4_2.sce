clc; clear; close;

ki=430*(10^(-6));//in amp/volt^2
vt=0.4;//in volts
wl=2;
Vdd=1.2;//in volts
Rl=20*(10^3);
Voh=Vdd;
k=ki*wl;
Vol=Vdd/(1+k*Rl*(Vdd-vt));
Vil=vt+(1/(k*Rl));
Vih=vt+sqrt((8*Vdd)/(3*k*Rl))-1/(k*Rl);
NML=Vil-Vol;
NMH=Voh-Vih;
disp(NML,'NML(in volts)');//answer vary due to round off error
disp(NMH,'NMH(in volts)');//answer vary due to round off error
