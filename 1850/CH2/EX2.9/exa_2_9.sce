// Exa 2.9
clc;
clear;
close;
// Given data
format('v',7)
V1=745;// in micro volt
V2=740;// in micro volt
Vd= V1-V2;// in micro volt
Vcm= (V1+V2)/2;// in micro volt
Ad= 5*10^5;
CMRR= 80;// in dB
CMRR= 10^(CMRR/20);
V_out= Ad*Vd*10^-6*(1+1/CMRR*Vcm/Vd);// in volt
disp(V_out,"Output voltage in volt")
errorVoltage= V_out-Ad*Vd*10^-6;// in volt
PercentError= errorVoltage/V_out*100;// in %
disp(PercentError,"Percentage error is")
