//Ex:8.11
clc;
clear;
close;
h=0.35*10^-3;// irradiance W/cm^2
po=0.45*10^-3;// power output in watt
d=1.5;// separation distance in cm
x=sqrt((4*po)/(3.14*d^2*h));// divergence angle in radians
X=(x*180)/3.14;// divergence angle in degree
printf("The divergence angle =%f degree ", X);