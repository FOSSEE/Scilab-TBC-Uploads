//Ex:15
clc;
clear;
close;
n_a=0.68;//Overall eficiency
d=30;//Diameter in m
f=4150*10^6;//Frequency in Hz
c=3*10^8;//Speed of light in m
y=c/f;//Wavelength in m
G_a=n_a*%pi^2*d^2/y^2;
G=10*log(G_a)/log(10);
t=19;// in db
printf("G/T ratio =%f db/k",G-t);