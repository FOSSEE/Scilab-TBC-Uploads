// Example 4.12;//bit rate
clc;
clear;
close;
dx=2;//in ps/nm-km
L=100;//in km
h1=1310;// in nm
h2=1300;//in nm
dh=h1-h2;//in nm
brl=(1/(4*dx*(dh/10)));//in Gbps-km
br=brl/L;//in Gbps
disp(br*10^3,"bit rate in Gbps")
