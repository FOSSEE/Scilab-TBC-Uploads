clc
clear

P1=1;
P2=16;
n=1.3;
LN=100;
N=350;
IP=30;
Ev=0.95;

L=LN/N;
x=[((P2/P1)^((n-1)/n))-1];
V14=[IP*(n-1)*60]/[n*P1*100*x*N];
Vs=V14/Ev;
D2=Vs*4/[(22/7)*L];
D=D2^0.5;
printf('D= %2.0f mm',D*1000);
printf('\n');
printf('L= %2.0f mm',L*1000);
printf('\n');
