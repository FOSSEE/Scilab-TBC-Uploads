clc
clear

P1=1;
P2=12;
n=1.3;
N=350;
L=180/(2*N);
IP=30;
Ev=0.92;

W=[n/(n-1)]*[P1*100]*[((P2/P1)^((n-1)/n))-1];   //with (V1-V4)
V14=[IP*60]/[N*W];
Vs=V14/Ev;
D2=Vs*4/[(22/7)*L];
D=sqrt(D2);
printf('D: %3.3f m',D);
printf('\n');
printf('L: %3.3f m',L);
printf('\n');
