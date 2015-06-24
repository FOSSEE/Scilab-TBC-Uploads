clc
clear

IP=15;
n=1.2;
P1=100;
P2=700;
x=[(P2/P1)^((n-1)/n)]-1;
V1N=[IP*(n-1)*60]/[n*P1*x*2];
LN=150/2;
D2=V1N*4/[(22/7)*LN];
D=D2^0.5;
L=D*1.5;
printf('D= %2.0f mm',D*1000);
printf('\n');
printf('L= %2.0f mm',L*1000);
printf('\n');
