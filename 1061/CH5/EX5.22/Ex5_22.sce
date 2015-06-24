//Ex:5.22
clc;
clear;
close;
n1=1.46;// core refractive index
df=0.025;
L=1500;// length in meter
c=3*10^8;// the speed of ligth in m/s
md=(n1*L*df)/(c*(1-df));// max dispersion in sec
Md=md*10^9;// max dispersion in ns
printf("The max dispersion =%d ns", Md);