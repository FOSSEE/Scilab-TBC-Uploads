//Ex:9.1
clc;
clear;
close;
e_c=550;// number of electron collected
p=800;// number of photon incident
n=e_c/p;// quantum efficiency
e=1.602*10^-19;// charge
h=6.626*10^-34;// plank constant
c=3*10^8;// speed of light in m/s
y=1.3*10^-6// wavelength in m
R=(n*e*y)/(h*c);// responsivity in A/W
printf("The responsivity =%f Amp/Watt", R);