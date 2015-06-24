//Example No. 5.40
clc;
clear;
close;
format('v',9);

//Given Data : 
V=220;//V
Eff1=85/100;//Efficiency
Eff2=80/100;//Efficiency
Load=400;//Kg
t=2.5;//ms
Ra=0.1;//ohm
g=9.81;//constant for gravity acceleration
Pout=Load*g*t;//W
IL=Pout/V/Eff1/Eff2;//A
disp(IL,"Current drawn in ohm : ");
Eb=V-IL*Ra;//V
R=(V+Eb)/IL-Ra;//ohm
disp(R,"Resistance to be added in ohm : ");
