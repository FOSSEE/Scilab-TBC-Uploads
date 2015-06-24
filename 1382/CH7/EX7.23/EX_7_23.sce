// Example 7.23:Design R-C phase shift oscillator
clc;
clear;
close;
fo=1;//resonant frequency in killo hertz
Av= 29;//voltage gain
Vcc=10;//collector voltage
Ib=0.5;//maximum base current in micro ampere
I1=100*Ib;//assume current in micro ampere
Vosat= 0.9*Vcc;//saturation voltage assume
V1=Vosat/Av;//voltage for sustained oscillations
R1=(V1/(I1*10^-6))*10^-3;//RESISTANCE IN KILLO PHMS
Rf1=Av*R1;//resistance in killo ohms
Rf2=180;//standard resistance in killo ohms
R3=Rf2;//
R=R1;//
C=(1/(2*%pi*R*10^3*fo*10^3*sqrt(6)))*10^6;//capacitance in micro farad
disp(R,"Resistance for the R-C Phase shift oscillator in kilo ohms is")
disp(R3,"Resistance for the R-C Phase shift oscillator in kilo ohms is")
disp(C,"Capacitance for the R-C Phase shift oscillator in micro-farad is")
