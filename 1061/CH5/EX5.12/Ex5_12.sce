//Ex:5.12
clc;
clear;
close;
y=0.85*10^-6;// operating wavelength in m
L=0.5*10^-3;// beat length in m
BF=y/(L);//model birefrigence in um
L1=75;// beat length in m
BF1=y/(L1);//model birefrigence in um
printf("The model birefrigenceat 0.5 nm =%f*10^-3", BF);
printf("\n The model birefrigence at 75 m =%f*10^-8 ", BF1*10^8);
