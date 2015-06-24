clear;
clc;
//Example 2.10
n=1;//quantum efficiency
A=10^-2;//cm^2 junction area
p=5*10^17;//(cm^-2-s^-1) incident photon flux
e=1.6*10^-16;//charge of an electron
Iph=n*e*p*A;
printf('\nphotocurrent=%0.1f mA\n',Iph)
