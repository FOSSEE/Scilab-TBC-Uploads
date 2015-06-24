// Example 7.33:Design R-C phase shift oscillator
clc;
clear;
close;
rd=40;//resistane in killo ohms
fo=1//resonant frequency in killo hertz
gm= 5000;//in killo mh
R=10;;//assume Resistance in killo ohms
C=((1/(2*%pi*fo*10^3*R*10^3*sqrt(6)))*10^9);//C in nano farad
Av=29;//VOLTAGE GAIN
Vdd=12;//drain voltage
Rl= (Av/gm*10^-6)*10^9;//load resistance in killo ohms
Rd= ((Rl*rd)/(rd-Rl));//drain resistance in killo ohms
disp(Rd,"drain resistance in killo ohms is")
disp(C,"Capacitance for the R-C Phase shift oscillator in NANO-farad is")
