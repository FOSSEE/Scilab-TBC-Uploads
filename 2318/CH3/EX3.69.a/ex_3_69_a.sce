//Example 3.69.a:resistance and capacitance
clc;
clear;
close;
zab=521;//ohms
zbc=1200;//ohms
rda=12.1;//ohms
f=10;//kHz
cda=0.045;//micro-F
zda=rda-(%i/(2*%pi*f*10^3*cda*10^-6));//
zcd=(zbc*zda)/zab;//
disp(real(zcd),"resistance is,(ohm)=")
c=1/(2*%pi*f*10^3*imag(zcd));//
disp(-c*10^6,"capcitance is,(micro-F)=")
