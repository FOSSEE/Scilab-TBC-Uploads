
clear;
clc;
//Example 2.32
//Determine: i-Heat flux across the layers and
//ii-Interfacial temperature between the layers

//Given
T1=798    //K
T2=298    //K
x1=0.02    //m
x2=x1    //m
k1=60    //W/m.K
k2=0.1    //W/m.K
hi=100    //W/sq m.K
h0=25    //W/sq m.K
Q_by_A=(T1-T2)/(1/hi+x1/k1+x2/k2+1/h0);    //W/sq m
printf("Ans (i)- Heat flux across the layers is %f W/sq m",Q_by_A);
//If Tis the interfacial temperature between steel plate and insulating material
//Q_by_A=(T-T2)/(x2/k2+1/h0)
T=Q_by_A*(x2/k2+1/h0)+T2
printf("Ans-(ii)-Interfacial temperature between layers is %f K (%f degree C)",T,T-273);
