clear;
clc;
//Example 1.4
T=300;//(°K)Given Temperature
Na=10^16;//(cm^-3)Acceptor concentration in p region
Nd=10^15;//(cm^-3)Donor concentration in n region
n_i=1.5*10^10;//(cm^-3)intrinsic carrier concentration
C_jo=0.5;//(pF)junction capacitance at zero applied voltage
V_T=0.026;//(Volt)terminal voltage
//built-in potential
V_bi=V_T*log(Na*Nd/(n_i)^2);
disp(V_bi,"the built-in potential(V)")
//the junction capacitance for
V_R=1;//(V)reverse bias voltage
Cj=C_jo*(1+V_R/V_bi)^(-1/2);
printf('\nthe junction capacitance for V_R=1V=%f pF\n',Cj)
V_R=5;//(V)reverse bias voltage
Cj=C_jo*(1+V_R/V_bi)^(-1/2);
printf('\nthe junction capacitance for V_R=5V =%f pF',Cj)
