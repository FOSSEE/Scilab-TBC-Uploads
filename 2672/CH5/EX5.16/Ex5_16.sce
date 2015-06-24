//Example 5_16
clc;
clear;
close;
format('v',7);
//given data : 
e=1.6*10^-19;//C/electron
kB=1.38*10^-23;//Boltzman constant
Is=0.15;//pA
Is=Is*10^-12;//A
V=0.55;//V(Forward Biased)
Eta=1;//Assumed
//At t=20 degee C
t=20;//degree C
T=t+273;//K
VT=kB*T/e;//V
I=Is*(exp(V/Eta/VT)-1)*1000;//mA
//At t=100 degee C
t=100;//degree C
T=t+273;//K
VT=kB*T/e;//V
//Is increased by factor 2^8
Is=Is*2^8;//A
I=Is*(exp(V/Eta/VT)-1);//A
disp(I,"Current in the diode(A)");
