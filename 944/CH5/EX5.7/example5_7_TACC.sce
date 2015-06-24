//example 5.7

clear;
clc;

//Given:
H=-92.22;//Standard reaction enthalpy[KJ]
T=298;//Temperature [K]


//To find the change in entropy of the surroundings at 298K
//standard reaction enthalpy is H.Therefore, heat gained by the surroundings at 298K is -H
S=-H*1000/T;//Change in entropy[J/K]
printf("Change in entropy of the surroundings at 298k = %f J/K",S);

