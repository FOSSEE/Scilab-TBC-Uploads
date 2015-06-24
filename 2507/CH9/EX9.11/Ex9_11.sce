clc
clear
printf("Example 9.11 | Page number 283 \n\n");
//Evaluate the mass fraction and volumes fractions of N2 and H2 in mixture
//Given data
R = 1841 //J/kgK //Gas constant
Cp = 6310 //J/kgK //specific heat at constant pressure
MN = 28 //kg/kmol //molar mass N2
MH = 2 //kg/kmol //molar mass H2
CpN = 1042 //J/kgK //specific heat of N2
CpH = 14210 //J/kgK //specific heat of H2

//Solution
Y = [8314.3/MN, 8314.3/MH;CpN, CpH]\[R; Cp]
YN = Y(1) //mass fraction of N2
YH = Y(2) //mass fraction of H2
XN = YN*(8314.3/(R*MN)) //volume fraction of N2
XH = YH*(8314.3/(R*MH)) //volume fraction of H2
printf("Mass fraction of N2 = %.1f \n",YN)
printf("Mass fraction of H2 = %.1f \n",YH)
printf("Volume fraction of N2 = %.4f \n",XN)
printf("Volume fraction of H2 = %.4f \n",XH)
