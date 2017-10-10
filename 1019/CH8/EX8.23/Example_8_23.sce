//Example 8.23
clear;
clc;

//Given
T=298;//Temperature in K
R=8.314;//gas constant in J K^-1 mol^-1
R1=0.082;//gas constant in atm dm^3 K^-1 mol^-1
P=1;//pressure in atm
a=0.167;//degree of dissociation

//To determine Kp,Kc,delGoP and delGoC
Kp=(4*(a^2)*P)/(1-(a^2));//Equillibrium constant in terms of pressure
Kc=Kp*((R1*T)^(-1));//Equillibrium constant in terms of concentration
delGoP=-0.001*R*T*log(Kp);//standard free energy in kJ
delGoC=-0.001*R*T*log(Kc);//standard free energy in kJ
mprintf('Kc = %f',Kc);
mprintf('\n Kp = %f',Kp);
mprintf('\n delGoP = %f kJ',delGoP);
mprintf('\n delGoC = %f kJ',delGoC);
//end