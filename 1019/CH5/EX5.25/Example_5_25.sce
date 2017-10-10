//Example 5.25
clear;
clc;

//Given
p1=10;//vapour pressure in mm Hg at temperature T1 K
p2=40;//vapour pressure in mm Hg at temperature T2 K
T1=358.95;//initial temperature in K
T2=392.45;//final temperature in K
Ts=325.75;//surrounding temperature in K
R=8.314;//gas constant in J K^-1 mol^-1
ps=1;//
//To determine the delHv,Tb,delSv
delHv=(T1*T2*R*log(p2/p1))/33.5;//integrated form of clausius clapeyron equation
Tb=((1/T1)-(19.147*log10(76)/delHv))^(-1);//boiling temperature in K
delSv=delHv/Tb;//entropy in vapourization in J K^-1 mol^-1
mprintf('(i) delHv = %f J mol^-1',delHv);
mprintf('\n (ii) Tb = %f K',Tb);
mprintf('\n (iii) delSv = %f J K^-1 mol^-1',delSv);
//end