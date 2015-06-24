////Example 7.16
clc;
clear;
close;
format('v',6);
//Given data :
g=9.81;//gravity constant
D=150/1000;//meter
l=70;//meter
H=2.6;//meter(head of water)
f=0.01;//coeff. of friction
//Applyong Bernoullis theorem
v=sqrt(H*(2/g*(1+0.5+4*f*l/D))/4);//m/s
Q=%pi*D^2/4*v;//m^3/sec
Q=Q*1000;//litres/sec
disp(Q,"Discharge through the pipe(litres/sec)");
