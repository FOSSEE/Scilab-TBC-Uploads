//Example No. 1.1.1
clc;
clear;
close;
format('v',7);

f1=100;//kHz
f2=1;//MHz
f3=10;//MHz
c=3*10^8;//m/s
lambda1=c/(f1*10^3);//m
lambda2=c/(f2*10^6);//m
lambda3=c/(f3*10^6);//m
disp(lambda1/1000,"At 100kHz, wavelength(km) : ");
disp(lambda2,"At 1MHz, wavelength(m) : ");
disp(lambda3,"At 10MHz, wavelength(m) : ");
