//Example 3.70:resistance 
clc;
clear;
close;
w=5000;//rad/s
cab=0.2;//micro-F
zab=(-%i/(w*cab*10^-6));//ohms
zbc=500;//ohm
l=0.1;//H
rcd=50;//ohm
zcd=rcd+%i*w*l;//ohm
cda=0.4;//micro-F
izda=-%i/(w*cda*10^-6);//
zda=(zab*zcd)/zbc;//
rs=real(zda);//ohms
disp(rs,"resistance is ,(ohm)=")
