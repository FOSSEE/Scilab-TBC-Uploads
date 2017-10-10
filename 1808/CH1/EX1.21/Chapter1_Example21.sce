clc
clear
//INPUT DATA
P=101.325;//Atmospheric pressure in kPa
Ra=0.287;//gas constant
Ta=303;//atm.temperature in K
L=0.092;//stroke in m
Sp1=10;//mean piston speed
ma=60;//air flow in g/s
Vs=2.2*10^-3;//capacity

//CALCULATIONS
Roa=P/(Ra*Ta);//Density of air in kg/m^3
N=Sp1/(2*L);//speed in rpm
nv=(2*ma)/(Roa*Vs*N*1000);//volumetric efficiency in percentage

//OUTPUT
printf('Volumetric efficiency is %3.2f percentage ',nv)
