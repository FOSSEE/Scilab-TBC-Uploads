clear;
clc;
//Example 12.22
Ao=10^6;
fPD=0.010;//KHz
b=0.01;
Af=Ao/(1+b*Ao);
printf('\nlow frequency closed loop gain=%.2f\n',Af)
fc=fPD*(1+b*Ao);
printf('\nclosed loop 3dB frequency=%.2f KHz\n',fc)
