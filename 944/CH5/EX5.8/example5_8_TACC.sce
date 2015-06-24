//example 5.8

clear;
clc;

//Given:
T1=298;//Initial Temperature[K]
T2=573;//Final Temperature[K]
Cv=29.1;//Specific Heat capacity of argon gas [J/K/mol]
n=1;//no. of moles


//To find the change in entropy for argon gas
S=n*Cv*log(T2/T1);//Change in entropy [J/K]
printf("The change in entropy of the argon gas is %f J/K",S);


