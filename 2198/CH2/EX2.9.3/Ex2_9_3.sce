//Ex 2.9.3
clc;clear;close;
format('v',6);

//Given : 
Io=1*10^-9;//A
T=27+273;//K
VT=T/11600;//V
VF=0.3;//volts
Eta=1;//for Ge diode
IF=Io*(exp(VF/Eta/VT)-1);//mA
disp(IF*10^3,"Forwad current in mA : ");
