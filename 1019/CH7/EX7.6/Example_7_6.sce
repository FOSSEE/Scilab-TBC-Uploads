//Example 7.6
clear;
clc;

//Given
R=0.08205;//gas constant in atm dm^3 K^-1 mol^-1
R1=8.314;//gas constant in J K^-1 mol^-1
T=300;//temperature in K
VCH4=4;//initial volume of methane in dm^3
VAr=1;//initial volume of argon in dm^3
Vf=3;//final volume
P=1;//Initial Pressure in atm

//To calculate delGmix,delHmix and delSmix
nCH4=(P*VCH4)/(R*T);//moles of methane taken
nAr=(P*VAr)/(R*T);//moles of Argon taken
xCH4=nCH4/(nCH4+nAr);//mole fraction of methane in the mixture
xAr=nAr/(nCH4+nAr);//mole fraction of Argon in the mixture
pf=(R*T*(nCH4+nAr))/Vf;//final pressure in atm
delGmix=R1*T*((nCH4*log(xCH4*pf))+(nAr*log(xAr*pf)));//free energy change in J
delHmix=0;//since the gases are ideal
delSmix=-delGmix/T;//entropy change in J K^-1
mprintf('delGmix = %f J \n delHmix = %f J \n delSmix = %f J K^-1',delGmix,delHmix,delSmix);
//end