//Example 6.5
clear;
clc;

//Given
T1=323;//temperature in K
T2=322;//temperature in K
T21=324;//temperature in K
n=2;//moles of water
NA=6.023*(10^23);//avogadros number
Cp=75;//specific heat at constant pressure of water in J K^-1 mol^-1
k=1.38*(10^(-23));//in J K^-1

//To calculate the probability
delS=Cp*log(T2*T21/T1^2);//entropy change in J mol^-1 K^-1
p=exp(delS/k);//probability
mprintf('Probability that 2 moles of water at 323 K will break down into two drops at 322 and 324 K each 1 mole is negligibly small = %f',p);
//end