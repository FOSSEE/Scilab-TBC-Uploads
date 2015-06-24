//Part B Chapter 4 Example 13
clc;
clear;
close;
b=30;//mm(thickness)
l=8;//m
d=260;//mm
D=d+2*b;//mm
N=300;//rpm
tau_s=16;//N/mm^2
Gs=8.5*10^4;//N/mm^2
Gb=4.5*10^4;//N/mm^2
Ips=%pi/32*d^4;//mm^4
Ipb=%pi/32*(D^4-d^4);//mm^4
TsByTb=Ips/Ipb*Gs/Gb;
Ts=%pi/16*d^3*tau_s;//Nmm
Tb=Ts/TsByTb;//Nmm
T=Ts+Tb;//Nmm
P=2*%pi*N*T/60/1000;//W
disp("Maximum power is "+string(P/1000)+" kW");
