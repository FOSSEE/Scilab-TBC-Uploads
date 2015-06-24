//ques5
//adiabatic steady state processes
clear
clc
//from table A.2
P1=20;//pressure at state 1 in MPa
P2=2;//pressure at state 2 in MPa
T1=203.2;//Temperature at state 1 in K
Pr1=P1/3.39;//Reduced pressure at state 1
Pr2=P2/3.39;//Reduced pressure at state 2
Tr1=T1/126.2;//Reduced temperature
//from compressibility chart h1*-h1=2.1*R*Tc
//from zero pressure specific heat data h1*-h2*=Cp*(T1a-T2a)
//h2*-h2=0.5*R*Tc
//this gives dh=h1-h2=-2.1*R*Tc+Cp*(T1a-T2a)+0.5*R*Tc
R=0.2968;//gas constant for given substance
Tc=126.2;//K, Constant temperature
Cp=1.0416;//heat enthalpy at constant pressure in kJ/kg
T2=146;//temperature at state 2
dh=-1.6*R*Tc+Cp*(T1-T2);//
printf('Enthalpy change = %.0f kJ/kg \n',dh);
printf(' Since Enthalpy change is %.0f kJ/kg so Temperature = %.1f K',dh,T2); 