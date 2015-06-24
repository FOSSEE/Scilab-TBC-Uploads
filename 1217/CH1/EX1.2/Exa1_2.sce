//Exa 1.2 
clc;
clear;
close;
//given data
V1=50;//in uV
V2=-50;//in uV
Ad=2000;//unitless
Ac=0.5;//unitless
Vid=V1-V2;//in uV
Vc=(V1+V2)/2;//in uV
//output voltage
Vo=Ad*Vid+Ac*Vc;//in uV
Vo=Vo*10^(-6);//in Volts
CMRRdB=20*log10(Ad/Ac);
disp(Vo,"Output voltage in volts is : ");
disp(CMRRdB,"CMRR in dB is : ");
