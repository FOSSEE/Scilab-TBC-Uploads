
//Exa:4.3
clc;
clear;
close;
//Given:
diss=1000;//in watts
eff=0.75;
m=0.50;
Po=eff*diss*4;
Dc=Po+diss;
printf("\n DC power = %fW ",Dc);
Pt=Po*(1+m/4);
printf("\n Total RF power = %fW ",Pt);