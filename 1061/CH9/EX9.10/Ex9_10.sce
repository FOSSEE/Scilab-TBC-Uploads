//Ex:9.10
clc;
clear;
close;
Iph=75*10^-6;// output photocurrent in A
y=0.85;// operating wavelength in um
Pi=750*10^-6;// incident optical power in uW
R=Iph/Pi;// responsivity in A/W
n=1.24*R/y;// external quantum efficiency
n1=n*100;// percentage of external quantum efficiency
printf("The responsivity =%f A/W ", R);
printf("\n The external quantum efficiency =%f%% ", n1);