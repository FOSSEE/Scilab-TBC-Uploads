clc;
clear;
ID_sat=5*10^-3 //in mA
L=1.3*10^-4 //in micro-m
myu_n=660 //in cm^2/V*s
Cox=7*10^-8 //in F/cm^2
VGS=5 //in V
VT=0.66 //in V

//Calculaation
Z=(ID_sat*2*L)/(myu_n*Cox*(VGS-VT)^2)

mprintf("Channel width= %.2e cm",Z)
