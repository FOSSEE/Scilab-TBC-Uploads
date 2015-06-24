//Example 4_2
clc;
clear;close;

//Given data: 
Ra=0.06;//ohm
Rf=0.03;//ohm
Iav=15;//A
f=500;//Hz
Eb=100;//V
V=200;//V

//Solution :
Vav=Iav*(Ra+Rf)+Eb;//V
T=1/f;//s
Ton=Vav*T/V;//s
Toff=T-Ton;//s
disp(Toff,Ton,"Periods of conduction & blocking(seconds)");
