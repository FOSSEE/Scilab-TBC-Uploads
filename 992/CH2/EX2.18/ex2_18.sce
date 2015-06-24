
//Exa:2.18
clc;
clear;
close;
//Given:
Pt=100;//in Watts
m=0.25;//depth
Pmax=100//maximum power transmission capable
Pc=Pt/(1+(m^2)/2);
printf("\n\n\t carrier power = %f W ",Pc);
printf("\n\n\t sidebands have the remaining %f W ",Pmax-Pc);