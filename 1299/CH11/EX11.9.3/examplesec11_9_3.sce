//Example sec 11.9.3 
//Schurcohn stability test 
clear;clc;
xdel(winsid());

z=%z
G=1/(1-((7/4)*(z^-1))-((1/2)*(z^-2)))
A2=1-((7/4)*(z^-1))-((1/2)*(z^-2))
//K2=coefficient of z^-2
K2=-0.5
B2=-0.5-1.75*(z^-1)+z^-2

A1=(A2-K2*B2)/(1-K2^2)
//K1=coefficient of z^-1
K1=-3.5
//mod(K1)>1 and mod(K2)<1
disp("The sytem is unstable")
