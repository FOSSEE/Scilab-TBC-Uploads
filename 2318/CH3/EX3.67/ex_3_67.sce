//Example 3.67:frequency and resistance
clc;
clear;
close;
rab=800;//ohm
cab=0.4;//micro-F
rbc=500;//ohms
cbc=1;//micro-F
rcd=1200;//ohm
x=cab*10^-6*rab;//
y=cbc*10^-6*rbc;//
w=sqrt(1/(x*y));//rad/s
f=w/(2*%pi);//
zab=(rab/((1+(%i*w*cab*10^-6*rab))));//ohms
zbc=rbc+(1/((1+(%i*w*cbc*10^-6*rbc))));//ohms
zda=(zab*rcd)/zbc;//ohms
disp(round(f),"frequency is,(Hz)=")
disp(round(real(zda)),"resistance is,(ohm)=")
