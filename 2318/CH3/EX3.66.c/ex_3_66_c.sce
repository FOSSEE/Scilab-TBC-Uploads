//Example 3.66.c:voltage
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
iba=v1/(zab-(%i/(2*%pi*10^3*cda)));//
vba=zab*iba;//
v2=sqrt(real(vba)^2+imag(vba)^2);//volts
ibc=v1/(rba-(%i/(2*%pi*10^3*cx)));//
vbc=rba*ibc;//
v3=sqrt(real(vbc)^2+imag(vbc)^2);//volts
vac=v3-v2;//
disp(vac*10^3,"voltage across the detector is,(mV)=")
