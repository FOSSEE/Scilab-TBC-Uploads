//Exa 5.1
clc;
clear;
close;
//Given Data :
format('v',6);
Load=100;//in MW
V=380;//in KV
d=100;//in km
rho=0.045;//in ohm/cm^2/km
w=0.01;//in kg/cm^3
Eff=90;//in %
IL=Load*10^6/(sqrt(3)*V*10^3);//in Ampere
P_loss=Load*(100-Eff)/100;//in MW
P_loss=P_loss*10^6;//in Watt
P_loss=P_loss/3;//in watt/conductor
R_con=P_loss/IL^2;//in ohm/conductor
//R_con=R_con/d;//in ohm/conductor/km
a=rho*d/R_con;//in cm^2
vol=a*d;//in cm^3
W_cu=vol*w;//in Kg
disp(W_cu*100*10^3*3,"Weight of Cu for 3 onductors of 100 km length(in Kg) :");
//Note : answer in the book is not accurate.