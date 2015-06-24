
//Exa:4.3
clc;
clear;
close;
//Given:
Pt=50000;//in watts
m=0.7071;
Sx=m^2/2;
Sc=Pt/(1+Sx)/1000;
printf("\n 1)carrier power = %fkW ",Sc);
n=Sc*Sx/(Sc+Sc*Sx);
printf("\n 2)efficiency = %f percent",n*100);
Ac=sqrt(2*Pt*Sc);
printf("\n 3)carrier amplitude = %f kv",Ac/1000);