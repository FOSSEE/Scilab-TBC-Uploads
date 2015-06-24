////Example 7.18
clc;
clear;
close;
format('v',9);
//Given data :
g=9.81;//gravity constant
D=100/1000;//meter(Pipe diameter)
L=700;//meter(Total length)
Lin=300;//meter(inlet length)
hf=10;//meter(Available head)
h=1.4;//meter(height)
f=0.02;//coefficient of friction
v=sqrt(hf*2*g*D/4/f/L);//m/s
Q=%pi*D^2/4*v*1000;//litres/sec
disp(Q,"Discharge in pipe(litres/second)");
//Applying Brnaullis theorem
p1=0;v1=0;Z1=0;//(Neglecting minor losses)
v2=v;//m/s
Z2=h;//meter
hf=4*f*Lin*v^2/(2*g*D);//meter
p2BYw=-v2^2/2/g-Z2-hf;//meter of water
hatm=10.3;//meter(Atmospheric pressure head)
habs=p2BYw+hatm;//meter(Absolute pressure head)
disp(habs,"Pressure at the summit of siphon(meter)");
