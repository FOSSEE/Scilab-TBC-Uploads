//Exa 2.11
clc;
clear;
close;
//Given Data :
format('v',8);
l=1*10^3;//in meter
IL=300;//in Ampere
//CableCost=100*a;//in Rs/meter : a=cross sectional area(in cm^2)
i=10;//in %
Rate=10;//in Rs/kwh
rho=1.85*10^-6;//in ohm-cm
//R=rho*l/a;//in ohm
disp("Resistance of cable(in ohm) = "+string(rho*l*100)+"/a");
//Eloss=2*I^2*R*365*24/1000;//in kwh
disp("Energy loss per annum in 2 conductors(in kwh) : "+string(2*IL^2*rho*l*100*365*24/1000)+"/a");
//AnnualCost=Eloss/Rate;//in Rs
//Ccost=100*a*l;//in Rs
disp("Annual chrges on account of interest and depriciation(in Rs.) : "+string(100*l*Rate/100)+"a"); 
disp("For most ecpnomic cross section :");
a=sqrt(29170.8/10000);
disp(a,"Most economical cross section(in cm^2) :");