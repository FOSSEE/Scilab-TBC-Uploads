//Exa 7.6
clc;
clear;
close;
//Given data : 
format('v',5);
VA=240;//in volt
MAxVDrop=VA*5/100;//in volt
rho=2.87*10^-6;//in ohm-cm 
//VAB+VBC+VCA=0;//in volt
IA=(3200)/(26);//in Ampere
IAB=IA;//in Ampere
IBC=IA-100;//in Ampere
//Allowed voltage drop: IAB*RAB+IBC*RBC=12
R=12/(1015.26);//in ohm
RAB=R*300*2/100;//in ohm
RBC=R*600*2/100;//in ohm
RCA=R*400*2/100;//in ohm
//formula : R=rho*l/a
a=rho*(100*100)/R;//in cm^2
disp(a,"Cross section area(in cm^2) :");