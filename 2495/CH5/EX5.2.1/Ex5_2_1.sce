clear
clc
DelHm_f=6008.5;//in J/mol
m=18;//molar mass of water in gm/mol
rho_i=0.917;//density of ice in gm/cm^3
rho_l=0.99987;//density of liquid in gm/m^3
DelV=((m/rho_l)-(m/rho_i));
printf('DelV=%.3f*10^-6 m^3/mol',DelV/10^-6)
T=273.15;//in K
P=760;//in mmHg
Pt=4.6;//triple point pressure in mmHg
DelPDelT=((DelHm_f)/(T*DelV*10^-6));
printf('\nDelPdelT=%.3f 10^6 J/Km^3',DelPDelT/10^6)
DelP=((P-Pt)/P)*101.325*10^3;//in N/m^3
DelT=(DelP/DelPDelT);
printf('\nDelT=%.4f K',DelT)

//There are some errors in the solution given in textbook
//page 222
