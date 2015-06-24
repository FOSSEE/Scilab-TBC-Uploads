//Example 3.68.B:resistance and inductance
clc;
clear;
close;
cab=0.01;//micro-F
rbc=2.5;//k-ohms
cbc=1;//micro-F
rda=7.5*10^3;//ohm
cda=0.02;//micro-F
w=50*10^3;//Hz
zab=(-1/(((%i*w*cab*10^-6*1))));//ohms
zbc=rbc*10^3;//ohms
zda1=rda+(1/(((%i*w*cda*10^-6))));//ohms
zda=zda1/(1+(zda1*%i*w*100*10^-12));//
zcd=(zbc*zda)/zab;//
r=-real(zcd);//ohms
l=-imag(zcd)/w;//H
disp((r),"resistance is,(ohm)=")
disp(l,"inductance is,(H)=")
