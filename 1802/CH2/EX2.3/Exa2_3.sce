//Exa 2.3
clc;
clear;
close;
//Given Data :
format('v',9);
l=1;//in Km
l=l*10^5;//in cm
I=200;//in Ampere
//CableCost=50*a;//in Rs./meter (a=cross section in cm^2)
E_cost=5;//in paisa/kwh
i=10;//in %
rho=1.72*10^-6;//resistivity in ohm-cm
//R=rho*l/a;//in ohm
disp("Resistance of cable(in ohm) = "+string(rho*l)+"/a");
//Eloss=2*I^2*R*24*365/1000;//in kwh
disp("Power loss in the cable(in kwh) : "+string(2*I^2*rho*l*24*365/1000)+"/a");
//AnnualCost2=(E_cost/100)*2*I^2*rho*l*24*365/1000a ;//in Rs.
disp("AnnualCost of Energy Lost(in Rs.)="+string((E_cost/100)*2*I^2*rho*l*24*365/1000)+"/a");
//C1=CableCost*1000;//in Rs./km
disp("Cost of 1km cable=Rs"+string(50*1000)+"/a");
//AnnualCharges=C1*i/100;//in Rs.
disp("Annual chrges on account of interest and depriciation(in Rs.) : "+string(50*1000*i/100)+"a");
disp("For most ecpnomic cross section :");
a=sqrt(6026.88/5000);
disp(a,"Most economical cross section(in cm^2) :");