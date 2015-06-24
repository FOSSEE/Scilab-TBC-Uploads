//Example 4.1

clear;

clc;

fc=1*10^3;

fs=2*10^3;

AmaxdB=1;

AmindB=40;

e=((10^(AmaxdB/20))^(2)-1)^(1/2);

n1=((10^(AmindB/10))-1)/(e^2);

n=log(n1)/(2*log(fs/fc))+0.4;//0.4 is added in order to obtain a integer

printf("n=%.d",n);