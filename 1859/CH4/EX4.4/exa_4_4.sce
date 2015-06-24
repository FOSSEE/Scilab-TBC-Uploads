// Exa 4.4
clc;
clear;
close;
// Given data
Im= 200;// in micro A
Im=Im*10^-6;// in amp
Rm= 5;// in kohm
Rm=Rm*10^3;// in ohm
I_B= 0.5;// in micro amp
I_B=I_B*10^-6;// in amp
V=25;// in mV
V=V*10^-3;// in volt
Vout= Im*Rm;// in volt
I= 500*I_B;// in amp
R1= V/I;// in ohm
disp(R1,"Resistor in ohm")
Rf= (Vout-V)/I;// in ohm
disp(Rf*10^-3,"Feedback resistor in kohm")
