// Example 7.11;//transmission factor
clc;
clear;
close;
n=1;//refratcive index of air
i=37;//current in milli ampere
V=1.6;//Voltage in volts
nep=0.75;//external power efficiency
Pint=30;//power in milli watt
nx=3.46;//refrative index
P=i*V*10^-3;//POWER IN WATT
Pe=(nep*P)/100;//
F=(Pe*4*nx^2)/(Pint*10^-3*n^2);//Transmission factor 
disp(F,"Transmission factor is")
