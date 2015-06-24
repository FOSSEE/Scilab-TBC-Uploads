clear;
clc;

//Example - 1.11
//Page number - 29
printf("Example - 1.11 and Page number - 29\n\n");

//Given
M_O2 = 31.999;//molecular weight of oxygen
M_N2 = 28.014;//molecular weight of nitrogen
Y = 1.4;//molar heat capacities ratio for air

//Molecular weight of air(21 vol% O2 and 79 vol% N2)is given by
M_air = (0.21*M_O2)+(0.79*M_N2);//(vol% = mol%)

R = 8.314;//[J/mol*K] - Universal gas constant
R = (R*1/M_air);//[kJ/kg*K]

printf(" The value of universal gas constant (R) = %f kJ/kg-K \n",R);

//Y=Cp0/Cv0 and Cp0-Cv0=R
Cv_0 = R/(Y-1);//[kJ/kg*K] 
Cp_0 = Y*Cv_0;//[kJ/kg*K]
printf(" The value of Cp_0 for air is %f kJ/kg-K\n',Cp_0);
printf(" The value of Cv_0 for air is %f kJ/kg-K',Cv_0);

