clc
clear
printf("Example 9.12 | Page number 284 \n\n");
//Part(a) Find specific heats
//Part(b) Find internal energy
//Part(c) Find enthalpy
//Part(d) Find entropy
//Given Data
m = 1.9 //kg
T = 273+20 //K
p = 150 //kPa
pdat = 100 //kPa //datum pressure
Tdat = 273 //K //datum temperature
yO2 = 0.1 //mass fraction of O2
yN2 = 0.75 //mass fraction of N2
yCO2 = 0.12 //mass fraction of CO2
yCO = 0.03 //mass fraction of CO
xO2 = 0.093 //mole fraction of O2
xN2 = 0.795 //mole fraction of N2
xCO2 = 0.081 //mole fraction of CO2
xCO = 0.031 //mole fraction of CO
R = 280.22 //J/kgK
M = 29.67 //kg/kmol //mixture molar mass
CpO2=0.922 //kJ/kgK
CpN2=1.042 //kJ/kgK
CpCO2=0.842 //kJ/kgK
CpCO=1.041 //kJ/kgK
//Part(a)
printf("Part(a)\n");
Cp = yN2*CpN2 + yO2*CpO2 + yCO2*CpCO2 + yCO*CpCO //kJ/kgK // specific heat of mixture at constant pressure
Cv = Cp - R*.001 //specific heat of mixture at constant volume
printf("Cp = %.3f kJ/kgK\n",Cp)
printf("Cv = %.4f kJ/kgK\n",Cv) 

//Part(b)
printf("\nPart(b)\n");
U = m*(Cv*(T-Tdat)) //kJ //internal energy
printf("Internal energy = %.2f kJ\n",U)

//Part(c)
printf("\nPart(c)\n")
H = U + m*R*T*.001 //kJ //enthalpy
printf("Enthalpy = %.1f kJ\n",H)

//Part(d)
printf("\nPart(d)\n")
SO2 = CpO2*log(T/Tdat)-(8.3143/32)*log(xO2*(p/pdat)) //kJ/kgK //entropy of O2
SN2 = CpN2*log(T/Tdat)-(8.3143/28)*log(xN2*(p/pdat)) //kJ/kgK //entropy of N2
SCO2 = CpCO2*log(T/Tdat)-(8.3143/44)*log(xCO2*(p/pdat)) //kJ/kgK //entropy of CO2
SCO = CpCO*log(T/Tdat)-(8.3143/28)*log(xCO*(p/pdat)) //kJ/kgK //entropy of CO

S = m*(yO2*SO2+yN2*SN2+yCO2*SCO2+yCO*SCO) //kJ/K //entropy
printf("Entropy = %.4f kJ/K",S)
