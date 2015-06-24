//molar heat of vaporisation

clear;
clc;

printf("\t Example 11.7\n");

P1=401;//vapor pressure at 18C, mm Hg
T1=18+273;//temperature, K
T2=32+273;//temperature, K
deltaH=26000;//heat of vaporisation, J/mol
R=8.314;//gas constant, J/K.mol
X=deltaH/R*(T1-T2)/(T1*T2);
P2=401*exp(-X);//vapor pressure at 32C, mmHg(from ln(P1/P1)=deltaH/R*((T1-T2)/(T1*T2)))

printf("\t the pressure at 32 C is : %4.0f mm Hg\n",P2);

//End
