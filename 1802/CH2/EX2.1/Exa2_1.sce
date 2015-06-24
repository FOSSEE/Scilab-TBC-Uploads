//Exa 2.1
clc;
clear;
close;
//Given Data :
format('v',7);
//CableCost=20+400*a;//in Rs./meter (a=cross section in cm^2)
//Cable_cost=(20+400*a)*1000;//in Rs./meter
l=1;//in Km
P=1;//in MW
V=11;//in KV
cosfi=0.8;//powerfactor
h=3000;//hours
i=10;//in %
E_cost=15;//in paisa/kwh
rho=1.75*10^-6;//sp. resistance in ohm-cm
//C1=CableCost*1000;//in Rs./km
disp("Cost of 1km cable=Rs"+string(20*1000)+"+"+string(400*1000)+"a");
//R=rho*l*10^3/(a*10^-2);//in ohm
disp("Resistance of 1km cable(in ohm) = "+string(rho*l*10^3/(10^-2))+"/a");
Ifl=(P*10^6)/(V*10^3*cosfi);//in Ampere
disp(Ifl,"Full load current(in Ampere) :");
//Ploss=2*I^2*R;//in Watts
disp("Power loss in the cable(in watts) : "+string(2*Ifl^2*rho*l*10^3/(10^-2))+"/a");
//Annual_cost=Ploss*10^-3*h*E_cost/100;//in Rs.
disp("Annual cost of energy(in Rs.) : "+string(2*Ifl^2*rho*l*h*E_cost/(10^-2))+"/a");
//AnnualCost2=400*10^3*a*i/100;//in Rs.
disp("AnnualCost of interest and depriciation(in Rs.)="+string(400*10^3*i/100)+"a");
disp("Using Kelvin law for most ecpnomical cross sectional area :");
a=2032.5/40000;
disp(a,"Most economical cross section(in cm^2) :");