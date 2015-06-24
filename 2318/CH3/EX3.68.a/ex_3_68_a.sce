//Example 3.68.a:resistance and inductance
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
zda=rda+(1/(((%i*w*cda*10^-6))));//ohms
zcd=(zbc*zda)/zab;//
r=-real(zcd);//ohms
l=-imag(zcd)/w;//H
disp(round(r),"resistance is,(ohm)=")
disp(l,"inductance is,(H)=")
