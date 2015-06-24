//Example 7.3: Injection efficiency
clc;
clear;
close;
format('v',7)
//given data :
Na=10^23;// in m^-3
Nd=10^21;// in m^-3
T=300;// in K
e=1.6*10^-19;// in J
k=1.38*10^-23;// in JK^-1
mue=0.85;// in m^2V^-1s^-1
muh=0.04;// in m^2V^-1s^-1
De=(mue*k*T)/e;// in m^2s^-1
Dh=(muh*k*T)/e;// in m^2s^-1
Le=1;
Lh=Le;
eta_inj=1/(1+((De/Dh)*(Lh/Le)*(Nd/Na)));
disp(eta_inj,"Injection efficiency,eta_inj = ")
