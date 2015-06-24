// Example 2.9
clc;
clear;
close;
// Given data
format('v',9);
V1= 745;// in µV
V2= 740;// in µV
Ad= 5*10^5;// differential voltage gain
CMRR= 80;// in dB
CMRR= 10^(CMRR/20);
Vd= V1-V2;// difference signal in µV
Vcm= (V1+V2)/2;// common-mode signal in µV
// Output voltage,
Vout= Ad*Vd*(1+1/CMRR*Vcm/Vd);// in µV
AdVd= Ad*Vd;// in µV
// Error voltage
Verror= Vout-AdVd;// in µV
Vout= Vout*10^-6;// in V
Verror= Verror*10^-6;// in V
Per_error= Verror/Vout*100;// percentage error
disp(Vout,"The output voltage in volts is : ")
disp(Per_error,"The percentage error in the output voltage is : ")


