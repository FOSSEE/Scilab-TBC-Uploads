clear
clc
R=8.314;//in J/Kmol
T=273.15;//in K
m=18;//molar mass of water in gm /mol
rho_l=0.99987;//density of water ingm/cm^3
P2=101.325*10^3;//atmospheric pressure in N/m^2
Pt=4.6;//triple point pressure in mmHg
P1=(Pt/760)*P2;//
P=Pt*10^((((m*10^-3)/(rho_l*10^3))*(P2-P1))/(2.303*R*T));//vapour pressure of liquid water in mmHg
printf('P=%.3f mmHg',P)

//page 223

