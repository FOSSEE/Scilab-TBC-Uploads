// Example 4.5.c:Bandwidth legth product
clc;
clear;
close;
t=0.1*10^-6;//Time in second
L=15;//Distance in km
Bt=(1/(2*t))*10^-6;//Maximum possible optical bandwidth in Mega Hertz
BL=Bt*L;// bandwidth length product in km
disp(BL,"bandwidth length product in MHz km")
