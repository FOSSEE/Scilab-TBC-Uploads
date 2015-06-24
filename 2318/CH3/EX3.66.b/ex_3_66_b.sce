//Example 3.66.b:voltage
clc;
clear;
close;
zbc=1000;//ohms
f=1;//kHz
cda=0.2*10^-6;//micro-F
zab=500;//ohms
zda=(-%i/(2*%pi*f*10^3*cda));//
zcd=(zbc*zda)/zab;//
cx=-1/(2*%pi*f*10^3*imag(zcd));//
rba=1002;//ohms
v1=10;//volts
iab=v1/(rba+zab);//amperes
ibc=iab;//amperes
ida=v1*%i*2*%pi*f*10^3*((cda*cx)/(cda+cx));//amperes
icd=ida;//amperes
vab=(v1*zab)/(rba+zab);//volts
vab1=icd/(%i*2*%pi*10^3*cda);//volts
vbd=vab1-vab;//volts
disp(vbd*10^3,"voltage across the detector is,(mV)=")
