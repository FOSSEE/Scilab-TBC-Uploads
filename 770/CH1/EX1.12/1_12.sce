clear;
clc;

//Example - 1.12
//Page number - 30
printf("Example - 1.12 and Page number - 30\n\n");

//Given
Y = 1.4;//molar heat capacities ratio for air
R = 8.314;// [J/mol*K] - Universal gas constant
Cv_0 = R/(Y-1);// [J/mol*K]
Cp_0 = Y*Cv_0;// [J/mol*K]

printf(" The molar heat capacity at constant volume (Cv_0) is %f J/mol-K\n',Cv_0);
printf(" The molar heat capacity at constant pressure (Cp_0) is %f J/mol-K',Cp_0);



