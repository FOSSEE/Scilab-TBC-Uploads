//Example 3.65:resistance and capacitance
clc;
clear;
close;
rab=2000;//ohms
f=1;//kHz
cab=0.047;//micro-farad
zab=(1/((1/rab)+(%i*2*%pi*f*10^3*cab*10^-6)));//
rbc=1000;//ohms
cbc=0.47;//micro-F
zbc=rbc-(%i/(2*%pi*f*10^3*cbc*10^-6));//
cda=0.5;//micro-F
zda=(-%i/(2*%pi*f*10^3*cda*10^-6));//
zx=(zda*zbc)/zab;//
rx=real(zx);//ohms
cx=-1/(2*%pi*f*10^3*imag(zx));//
disp(round(rx),"resistance is ,(ohm)=")
disp(cx*10^6,"capacitance is,(micro-F)=")
