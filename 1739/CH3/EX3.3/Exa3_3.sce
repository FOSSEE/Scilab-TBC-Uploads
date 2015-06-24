//Exa 3.3
clc;
clear;
close;
//Given data :
//Formula Pulse Broadning per Km : deltaTmat(per Km)=(deltaTAUs*1000/c)*(lambda*d2n/dlambda^2)
deltaTAUs=45;//in nm
deltaTAUs=45*10^-9;//in m
lambda=0.9;//in um
lambda=0.9*10^-6;//in m
//let say, d^2n/dlambda^2=a
a=4*10^-2;//in um^-2
a=a*(10^-6)^-2;//in m^-2
c=3*10^8;//in m/s
deltaTmat_Km=(deltaTAUs*1000/c)*(lambda*a);//in sec/Km
disp(deltaTmat_Km*10^9,"Pulse broadning per Km in nano second per Km : ");