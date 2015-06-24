//Example 10.1;refractive index and bandwidth
clc;
clear;
close;
//given data :
format('v',5)
lamda=1.55*10^-6;// in m
del_lamda=1*10^-9;// in m
L=320*10^-6;// in m
n=(lamda)^2/(2*del_lamda*L);
Gs=10^(5/10);// 5 dB is equivalent to 3.16
R1=30/100;
R2=R1;
c=3*10^8;// in m/s
del_v=(c/(%pi*n*L))*asin((1-(Gs*sqrt(R1*R2)))/(sqrt(4*Gs*sqrt(R1*R2))));
disp(n,"refrative index is")
format('v',6)
disp(del_v*10^-9,"spectral bandwidth in GHz is")
//bandwidth is calculated wrong in the textbook
