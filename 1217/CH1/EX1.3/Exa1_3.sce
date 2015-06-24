//Exa 1.3
clc;
clear;
close;
//given data
V1=5;//in mV
V2=6;//in mV
Ad=70;//in dB
CMRR=90;//in dB
Vid=V2-V1;//in mV
Vc=(V1+V2)/2;//in mV
Ad=10^(Ad/20);//unitless
Ad=floor(Ad);
CMRR=10^(CMRR/20);//unitless
//output voltage
Vo=Ad*(Vid+Vc/CMRR);//in mV
Vo=round(Vo);
Vo=Vo*10^(-3);//in Volts
Vid=Vid*10^(-3);//in Volts
ErrorVotage=Vo-Ad*Vid;
PercentageError=(ErrorVotage*100)/Vo;
disp(Vo,"Output voltage in volts is : ");
disp(ErrorVotage,"ErrorVotage is : ");
disp(PercentageError,"PercentageError is : ")