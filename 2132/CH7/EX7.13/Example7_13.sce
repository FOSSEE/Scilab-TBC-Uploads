////Example 7.13
clc;
clear;
close;
format('v',6);
//Given data :
g=9.81;//gravity constanty
f=0.02;//coeff. of friction
PQ=500;//meter
QR=1000;//meter
RS=500;//meter
hf=10+PQ/62.5+QR/125-RS/100-2;//meter
l=500+1000+500;///meter
D=250/1000;//meter
v=sqrt(hf*2*g*D/4/f/l);//m/s
Q=%pi/4*D^2*v;//m^3/sec
Q=Q*1000;//litres/sec
disp(Q,"Discharge in pipe line in litres/sec : ");
