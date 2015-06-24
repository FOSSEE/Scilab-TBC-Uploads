// Example 4.13.b:Bandwidth legth product
clc;
clear;
close;
t=0.1*10^-6;//Time in second
L=10;//Distance in Km
Bt=(1/(2*t))*10^-6;//Maximum possible optical bandwidth in Mega Hertz
BL=Bt*L;// bANDWIDTH LENGTH PRODUCT IN kM
disp(BL,"BANDWIDTH LENGTH PRODUCT IN Km")
