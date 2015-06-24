//Ex 7.8
clc;
clear;
close;
format('v',7);

//Given data :
n1=6;//cylinders
IP=150;//KW
N=800;//rpm
TwoLN=320;//m/s
Lbyd=1.2;//stroke to bore ratio
Pmi=650;//Kn/m^2

//Calculation
//IP=n1*Pmi*(%pi/4*d^2)*L*n/60;//KW
d=sqrt(IP/n1/Pmi/(%pi/4)*2/TwoLN*2*60);//meter(L*N replaced by TwoLN/2)
L=Lbyd*d;//in meter
N=TwoLN/2/L;//rpm
disp(N,"Engine crank shaft speed in rpm : ");
