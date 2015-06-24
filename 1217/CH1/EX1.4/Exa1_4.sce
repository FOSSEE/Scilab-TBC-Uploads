//Exa 1.4
clc;
clear;
close;
//given data
V1=5;//in uV
V2=4;//in uV
Ad=80;//in dB
CMRR=100;//in dB
Ad=10^(Ad/20);//unitless
CMRR=10^(CMRR/20);//unitless
//differential mode output voltage 
Vid=V1-V2;//in uV
Vod=Ad*Vid;//in uV
Vod=Vod*10^(-3);//in mV
//common mode output voltage 
Vc=(V1+V2)/2;//in uV
Ac=Ad/CMRR;//unitless
Voc=Ac*Vc;//in uV
disp(Vod,"Differential mode output voltage in mV is : ")
disp(Voc,"common mode output voltage in uV is : ")
