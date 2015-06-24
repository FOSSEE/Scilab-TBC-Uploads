//Ex:85
clc;
clear;
close;
d=20;//dia in m
A=(%pi*d*d)/4;// Aperture raea
c=3*10^8;//velocity of light in m/s
f1=11.95*10^9;//in Hz
f2=14.25*10^9;// in Hz
y1=c/f1;//wavelength in m for f1
y2=c/f2;//wavelength in m for f2
u1=0.98*0.99*0.97*0.85*0.90*0.92;//aperture eff for 11.95 GHz
u2=0.96*0.99*0.97*0.85*0.90*0.92;//aperture eff for 14.25 GHz
G1=(u1*4*%pi*A)/(y1*y1);
G2=(u2*4*%pi*A)/(y2*y2);
g2=10*log(G2)/log(10);// in db
g1=10*log(G1)/log(10);// in db
printf("The antenna power gain=%f db",g1);
printf("\n The antenna power gain=%f db",g2);