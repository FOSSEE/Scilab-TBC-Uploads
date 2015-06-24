//Ex:11
clc;
clear;
close;
eirp=21;//Eirp in db
g_r=50.5;//Receiving antenna gain in db
y=2.727*10^(-2);//Wavelength in m
h=4*10^7;//Height in m
p_l=20*log(4*%pi*h/y)/log(10);//Path loss in db
p_r=eirp+g_r-p_l;//received power in db
printf("Received power =%f db",p_r);