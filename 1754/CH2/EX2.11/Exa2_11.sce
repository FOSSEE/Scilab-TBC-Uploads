//Exa 2.11
clc;
clear;
close;
//Given data
IES=10^-14;//in A
alfaF=1;//unitless
alfaR=0.1;//unitless
//Formula : alfaF*IES=alfaR*ICS
ICS=(alfaF/alfaR)*IES;//in Ampere
disp(ICS,"Collector base junction saturation current in Ampere : ");
RelativeSize=ICS/IES;//unitless
disp("Collector is "+string(RelativeSize)+" times larger in size than emitter.");
BetaR=alfaR/(1-alfaR);//unitless
disp(BetaR,"Value of BetaR : ");