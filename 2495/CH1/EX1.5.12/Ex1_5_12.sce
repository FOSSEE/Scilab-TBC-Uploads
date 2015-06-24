clear 
clc
rho1=1.21;//in gm^cm-3
rho2=1.10;//in gm^cm-3
P2=3260;//in atm
T2=298.15;//in K
P1=2450;//in atm
T1=242.15;//in K
MI=18;//molar mass of ice in gm/mol
R1=8.314;//in J
R2=0.082;//in atm dm^3
DelH_Tr=((P2-P1)*(R1/R2)*(MI/rho2-MI/rho1)*T1)/(T2-T1)
printf('DelH_Tr=%.3f J/mol',DelH_Tr)

//There is an error in the answer given in the textbook
//In text book he took (T1-T2)=6,but actually (T1-T2)=56
//page 23
