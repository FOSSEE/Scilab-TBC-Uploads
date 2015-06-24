//Exa 3.12
clc;
clear;
close;
//Given Data :
format('v',6);
L=220;//in meter
T=586;//in Kg
Wc=0.62;//in Kg
Ww=39.2*0.94/100;//in Kg
Wr=sqrt(Wc^2+Ww^2);//in Kg
cos_theta=Wc/Wr;//unitless
Sv=Wr*L^2*cos_theta/(8*T);//in meter
disp(Sv,"Sag(in meter) : ");