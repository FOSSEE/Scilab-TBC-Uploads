// Maximum current and frequncy at which it occurs and respective voltages

clc;
clear;

R=5;
L=4*(10^-3);
C=0.1*(10^-6);
V=10;

w0=1/(sqrt(L*C));

Ir=V/R;

Vl=w0*L*Ir;

Vc=Ir/(w0*C);

mprintf('The Maximum Current at resonance = %f A \n',Ir)
mprintf('The frequency for resonance = %f rad/sec \n',w0)
mprintf('The voltage magnitude across the inductor = %f V \n',Vl)
mprintf('The voltage magnitude across the capacitor = %f V \n',Vc)
