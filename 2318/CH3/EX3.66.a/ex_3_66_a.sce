//Example 3.66.a:capacitance
clc;
clear;
close;
zbc=1000;//ohms
f=1;//kHz
cda=0.2;//micro-F
zab=500;//ohms
zda=(-%i/(2*%pi*f*10^3*cda*10^-6));//
zcd=(zbc*zda)/zab;//
cx=-1/(2*%pi*f*10^3*imag(zcd));//
disp(cx*10^6,"capacitance is,(micro-F)=")
