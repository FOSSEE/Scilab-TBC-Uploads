clear;
clc;

//Example - 3.20
//Page number - 117
printf("Example - 3.20 and Page number - 117\n\n");

//(1)
//This part involves no numerical components
//For prove refer to this example 3.20 on page number 117 of the book.

//(2)
//Given,
R = 8.314;//[J/mol-K] - Universal gas constant
Cp_0 = 2.5*R;//[J/mol-K] -  Specific heat capacity at constant pressure
Cv_0 = 1.5*R;//[J/mol-K] -  Specific heat capacity at constant volume
T_L = 300;//[K] - Temperature at which port properties are constant.

Y = Cp_0/Cv_0;// Ratio of heat capacities.
//From part(1) we obtained the relation,
// T_2 = 1/(((P_2-P_1)/(Y*T_L*P_2))+(P_1/(P_2*T_1)))
// Not that when P_2 >> P_1 ,T_2 approaches Y*T_L and thus
T_2 = Y*T_L;//[K]
printf(" (b).The final temperature is %f K",T_2);