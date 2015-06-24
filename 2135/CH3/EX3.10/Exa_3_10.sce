//Exa 3.10
clc;
clear;
close;
format('v',7);

//Given Data :
m=0.8;//Kg
hi=335;//KJ/Kg-water
T1=24+273;//K
T2=0+273;//K
Wdot=400;//W
Wdot=Wdot/1000;//KW
Q2=m*hi;//KJ
ActualCOP=T2/(T1-T2)*30/100;
Q2dot=ActualCOP/Wdot;//KJ/s
T=Q2/Q2dot;//sec
disp(T,"Time required to freeze the water in sec : ");
