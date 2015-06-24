//Exa 2.19
clc;
clear;
close;
format('v',8);

//Given Data : 
m=1;//Kg
p1=100;//Kpa
T1=300;//kelvin
V_ratio=1/2;//V2/V1
T=1;//Nm
tau=1;//hr
tau=tau*60;//min
N=400;//rpm
R=0.287;//KJ/kgK

W1=m*R*T1*log(V_ratio);//KJ
W2=-T*2*%pi*N*tau/1000;//KJ
W=W1+W2;//KJ
disp(W,"Net work transfer in KJ : ");
