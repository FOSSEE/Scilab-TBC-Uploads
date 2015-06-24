// Exa 2.8
clc;
clear;
close;
// Given data
format('v',6)
V1=10;// in mV
V2=9;// in mV
Vd= V1-V2;// in mV
Vcm= (V1+V2)/2;// in mV
Ad= 60;// in dB
Ad= 10^(Ad/20);
CMRR= 80;// in dB
CMRR= 10^(CMRR/20);
V_out= Ad*Vd*10^-3*(1+1/CMRR*Vcm/Vd);// in volt
errorVoltage= V_out-Ad*Vd*10^-3;// in volt
disp(errorVoltage*10^3,"Error Voltage in mV");
PercentError= errorVoltage/V_out*100;// in %
disp(PercentError,"Percentage error is")
