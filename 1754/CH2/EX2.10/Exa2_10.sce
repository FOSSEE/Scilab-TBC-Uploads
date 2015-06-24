//Exa 2.10
clc;
clear;
close;
//Given data
alfaF=0.99;//unitless
alfaR=0.20;//unitless
IC=1;//in mA
IB=50;//in micro Ampere
T=300;//in kelvin
k=1.38*10^-23;//Boltzman constant
e=1.6*10^-19;//in cooulamb
Vth=k*T/e;//in Volt
VCEsat=Vth*log(((IC*10^-3*(1-alfaR)+IB*10^-6)*alfaF)/((alfaF*IB*10^-6-(1-alfaF)*IC*10^-3)*alfaR));//in volt
disp(VCEsat,"Collector-Emitter saturation voltage in volt :");