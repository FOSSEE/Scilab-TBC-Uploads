//exa 1.10
clc;clear;close;
format('v',6);
E=438*10^4;//kWh
LF=20;//% annual
CF=15;//%//Capacity Factor
Lmax=E/(LF/100)/24/365;//kW
Lmax=Lmax/1000;//MW
C=Lmax/CF*LF;//MW//Plant Capacity
disp(C,"Plant Capacity(MW): ");
RC=C-Lmax;//MW//Reserve Capacity
disp(RC,"Reserve Capacity(MW) : ");
