//Exa 3.2
clc;
clear;
close;
//Given data :
a=poly(0,'a');
cost=90*a+20;//Rs./m
i=10;//%(interest and depreciation)
l=2;//km
cost_E=4;//paise/unit
Im=250;//A
a=1;//cm^2
rho_c=0.173;//ohm/km/cm^2
l2=1*1000;//km
R=rho_c*l/a;//ohm
W=2*Im^2*R;//W
Eloss=W/1000*365*24/2;//per annum(kWh)
P3BYa=cost_E/100*Eloss;//Rs
Cc=90*a*l*1000;//Rs(capital cost of feeder cable)
P2a=Cc*i/100;//Rs
//P2a=P3BYa;//For most economical cross section
a=sqrt(P3BYa*a/(P2a/a));//cm^2
disp(a,"Most economical cross sectional area in cm^2 : ");
