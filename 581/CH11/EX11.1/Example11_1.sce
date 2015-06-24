
clear;
clc;

printf("\t Example 11.1\n");

Mn2=0.7556;        //mass fraction of nitrogen
Mo2=0.2315;    //mass fraction of oxygen
Mar=0.01289;    //mass fraction of argon gas
M1=28.02;    //molar mass of N2,kg/kmol
M2=32;    //molar mass of O2,kg/kmol
M3=39.95 ;   //molar mass of Ar,kg/kmol
Mair=(Mn2/M1+Mo2/M2+Mar/M3)^-1;    //molar mass of air,kg/kmol

Xo2=Mo2*Mair/M2;    //mole fraction of O2
PO2=Xo2*101325;    //partial pressure of O2,Pa
Co2=PO2/(8314.5*300);    //molar volume of O2,kmol/m^3
ao2=Co2*M2;    //density of O2,kg/m^3

printf("mole fraction of O2 is :%.4f\n",Xo2);
printf("partial pressure of O2 is :%4e\n",PO2);
printf("molar volume of O2 is :%.5f kmol/m^3\n",Co2);
printf("density of O2 is :%.4f kg/m^3\n",ao2);
//end