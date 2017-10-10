clc;
clear;
alpha_F=0.98
alpha_R=0.18
IC=2 //current in mA
IB=0.06 //current in mA
Const=0.026 //constant for kT/e in V

//Calculation
VCE=Const*log((((IC*(1-alpha_R))+IB)/((alpha_F*IB)-((1-alpha_F)*IC)))*(alpha_F/alpha_R))

mprintf("Collector-emitter voltage at saturation= %1.2f V",VCE)
