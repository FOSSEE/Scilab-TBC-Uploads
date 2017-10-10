//Example 5.24
clear;
clc;

//Given
p1=10;//vapour pressure of decane in Torr at temperature T1 K
p2=400;//vapour pressure of decane in Torr at temperature T2 K
T1=328.85;//initial temperature in K
T2=423.75;//final temperature in K
T=373;//temperature in K
R=8.314;//gas constant in J K^-1 mol^-1

//To determine the delHv,Tb,delSv
delHv=(T1*T2*R*log(p2/p1))/94.9;//integrated form of clausius clapeyron equation
delSv=delHv/T;//entrpoy change during vapourization in J K^-1 mol^-1
Tb=((((R*2.303*log10(76))/delHv)+(1/T1))^(-1))+186;//boiling temperature in K
mprintf('delHv = %f J mol^-1',delHv);
mprintf('\n delSv = %f J K^-1 mol^-1',delSv);
mprintf('\n Tb = %f K',Tb);
//end