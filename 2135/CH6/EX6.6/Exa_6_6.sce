//Exa 6.6
clc;
clear;
close;
format('v',8);

//Given Data :
V=3;//m^3
t=200;//degree C
Pat=1;//bar
Pgauge=7;//bar
P=Pgauge+Pat;//bar
ts=170.41;//degree C
tsup=t;//degree C
vsup=0.261;//m^3/Kg
hsup=2838.6;//KJ/Kg
m=V/vsup;//Kg
H=m*hsup;//KJ
disp(H,"Total Enthalpy in KJ : ");
//H=U+p*V
U=H-P*10^5*V/1000;//KJ
disp(U,"Total internal energy of system in KJ ; ");
disp(m,"Mass of steam in Kg : ");
//Steam table is used to get some data.
