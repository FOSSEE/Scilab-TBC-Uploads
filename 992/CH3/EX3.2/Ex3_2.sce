
//Exa:3.2
clc;
clear;
close;
//Given:
//V=12*sin(6*10^8*t+5*sin(1250)*t);
//Compairing it with V=A*sin(wc*t+mf*sin(wm)*t);
wc=6*10^8;
wm=1250;
mf=5;
A=12;
R=10;
Vrms=A/sqrt(2);
fc=wc/2/%pi;  
fm=wm/2/%pi;
P=Vrms^2/R;
printf("\n Fc = %f MHz",fc/10^6);
printf("\n Fm = %fHz",fm);
printf("\n Power = %fW",P);