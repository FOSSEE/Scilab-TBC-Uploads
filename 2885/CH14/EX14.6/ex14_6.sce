//Calculate the output voltage
clear;
clc;
//soltion
//given

Ad=2000;          //differential mode gain
CMRR=10000;
V1=10^-3;//V
V2=0.9*10^-3;//V
Vd=V1-V2;
Vc=(V1+V2)/2;
Vo=Ad*Vd*(1+Vc/(CMRR*Vd));
printf("The output voltage is %.2f mV",Vo*1000);
