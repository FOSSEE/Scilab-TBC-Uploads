//Exa 1.5
clc;
clear;
close;
//given data :
le=10;//in m
Irms=450;//in A
f=50;//in KHz
R=1.5;//in Ohm
lambda=300/(f/1000);//in m
Rr=160*(%pi)^2*(le/lambda)^2;//in Ohm
Wr=Irms^2*Rr;//in W
disp(Wr,"Radiated power in Watts : ");
Eta=(Rr/(Rr+R))*100;//efficiency in %
disp(Eta,"Efficiency of antenna in % : ");