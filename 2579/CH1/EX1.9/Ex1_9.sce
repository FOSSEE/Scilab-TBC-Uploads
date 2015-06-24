//Ex:1.9
clc;
clear;
close;
Irms=25;// current in Amp
f=0.150;// frequency in MHz
y=2000;
Erms=1.5*10^-3;// strength of electric field in V/m
r=25*1000;// distance in m
le=(Erms*y*r)/(60*%pi*Irms);// effective height of antenna in m
printf("The effective height of antenna = %f m", le);