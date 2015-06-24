//Exa 2.23
clc;
clear;
close;
format('v',7);

//Given Data : 
m=2;//Kg
Q=0;//KJ(because of adiabatic process)
p1=1;//Mpa
p1=p1*10^6/1000;//Kpa
t1=200;//degree centigrade
T1=t1+273;//kelvin
p2=100;//Kpa
n=1.2;
R=0.196;//KJ/KgK

T2=T1*(p2/p1)^((n-1)/n);//kelvin
t2=T2-273;//degree centigrade
u1=196+0.718*t1;//KJ
u2=196+0.718*t2;//KJ
deltau=u2-u1;//KJ
deltaU=m*deltau;//KJ
disp(deltaU,"Change in internal energy in KJ : ");
W=Q-deltaU;//KJ
disp(W,"Work transfer in KJ : ");
W1=m*R*(T1-T2)/(n-1);//KJ
disp(W1,"Displacement work in KJ : ");
