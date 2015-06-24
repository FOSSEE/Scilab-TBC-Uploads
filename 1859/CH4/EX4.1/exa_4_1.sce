// Exa 4.1
clc;
clear;
close;
// Given data
V_CC= 12;// in volt
V_BE=0.7;//in volt
Rsm=4.3;//value o Rs+Rm in kohm
I=1;//in mA

// Part (i)
V= 5;//in volt
V_E= V-V_BE;// in volt
Im= V_E/Rsm;// in mA
I_E=Im;// in mA
disp(Im,"Meter Current in mA")

// Part(ii)
h_FE= 100;
Im=Im*10^-3;//in amp
I_B= Im/h_FE;// in amp
Rin= V/I_B;// in ohm
disp(Rin*10^-3,"Input resistance with transistor in kohm")
// without transistor
Rin= Rsm;
disp(Rin,"Input resistance without transistor in kohm")

// Part(iii)
V=2.5;// in volt
V_E= V-V_BE;// in volt
Im= V_E/Rsm;// in mA
I_E=Im;// in mA
disp(Im,"Meter current when the dc input voltage is 2.5 volt in mA")
