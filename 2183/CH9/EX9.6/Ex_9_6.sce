//Example 9.6 // refractive index and 3dB spectral bandwidth
clc;
clear;
close;
//given data :
lamda=1.5*10^-6;// in m
L=300*10^-6;// in m
del_lamda=10^-9;// in m
n=lamda^2/(2*del_lamda*L);
disp(n,"refractive index , n = ")
R1=0.3;
R2=R1;
a=4.8;// in dB
Gs=10^(4.8/10);
c=3*10^8;
B=(c/(%pi*n*L)*asin((1-sqrt(R1*R2)*Gs)/(2*sqrt(sqrt(R1*R2)*Gs))))*10^-9;
disp(B," Spectral bandwidth,(GHz) = ")
