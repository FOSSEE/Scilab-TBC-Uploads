clear;
clc;
//Example1.3
T=300;//(°K)Given Temperature
Na=10^16;//(cm^-3)Acceptor concentration in p region
Nd=10^17;//(cm^-3)Donor concentration in n region
n_i=1.5*10^10;//(cm^-3)intrinsic carrier concentration
V_T=0.026;//(Volt)terminal voltage
//built-in potential
V_bi=V_T*log(Na*Nd/(n_i)^2);
printf('\nthe built-in potential=%f V',V_bi)
