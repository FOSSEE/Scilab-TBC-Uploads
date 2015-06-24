//example 6.12

clear;
clc;

//Given:
x1=0.5;//mole fraction of chloroform
x2=0.5;//mole fraction of p-xylene
T=298;//Temperature[K]
//to find the excess volume 
Ve=x1*x2*[0.585+0.085*(x1-x2)-0.165*(x1-x2)^2];//Excess volume measured by using a dilatometer
printf("Ve/(cm3.mol^-1) = %f ",Ve);