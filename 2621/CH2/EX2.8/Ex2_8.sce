// Example 2.8
clc;
clear;
close;
// Given data
format('v',6);
V1= 10;// in mV
V2= 9;// in mV
Ad= 60;// differential voltage gain in dB
Ad= 10^(Ad/20);
CMRR= 80;// in dB
CMRR= 10^(CMRR/20);
Vd= V1-V2;// difference signal in mV
Vcm= (V1+V2)/2;// common-mode signal in mV
// Output voltage,
Vout= Ad*Vd*(1+1/CMRR*Vcm/Vd);// in mV
AdVd= Ad*Vd;// in mV
// Error voltage
Verror= Vout-AdVd;// in mV
Per_error= Verror/Vout*100;// percentage error
disp(Verror,"The error voltage in mV is : ")
disp(Per_error,"The percentage error in the output voltage is : ")


