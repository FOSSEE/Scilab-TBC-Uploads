//Ex:2.21
clc;
clear;
close;
E_o=8.85*10^-12;
E_r=5.4;
C=1*10^-9;
d=0.1*10^-3;
A=(C*d)/(E_o*E_r)*10^4;
printf("Required plate area = %f sq. cm",A);