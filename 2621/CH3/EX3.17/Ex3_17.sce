// Example 3.17
clc;
clear;
close;
// Given data
format('v',6);
R1= 1*10^3;// in Ω
R2= 1*10^3;// in Ω
Rf= 10*10^3;// in Ω
R3= 10*10^3;// in Ω
Vd= 5;// in mV
Vcm= 2;// in mV
CMRR_dB= 90;// in dB
CMRR= 10^(CMRR_dB/20);
Ad= Rf/R1;// differential voltage gain
// Part (i)
Vout= Ad*Vd;// output voltage in mV
disp(Vout,"Part (i) : The output voltage in mV is : ");
// Part (ii)
Acm= Ad/CMRR;// common mode gain
AcmVcm= Acm*Vcm;// magnitude of the induced 60Hz noise at the output in mV
AcmVcm= AcmVcm*10^3;// in µV
disp(AcmVcm,"The magnitude of the induced 60Hz noise at the output in µV is : ")


