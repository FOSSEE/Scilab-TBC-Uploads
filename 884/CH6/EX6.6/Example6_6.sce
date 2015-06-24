//calculation of molar heat of combustion

clear;
clc;

printf("\t Example 6.6\n");

Ccal=10.17;//heat capacity, kJ/C
deltaT=25.95-20.28;//change in temp, C
qcal=Ccal*deltaT;
m=1.435;//mass of naphthalene, g
molm=128.2;//mol mass of naphthalene, g
q=-qcal*molm/m;//molar heat of combustion of naphthalene, kJ

printf("\t the molar heat of combustion of naphthalene is : %4.3f*10^3 kJ/mol\n",q*10^-3);

//End
