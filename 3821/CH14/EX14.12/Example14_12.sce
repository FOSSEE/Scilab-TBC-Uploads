////Chapter No 14 Air Standard Cycles
////Example No 14.12 Page No 317
///Find cut-off ratio
//Input Data
clc;
clear;
r=22;              //compression ratio of diesel engine r=v1/v2
r1=11;             //expansion ratio r1=v4/v3
gamma1=1.4;
rho=1.4;

//Calculation
rho=r/r1;          //cut-off ratio
//diesel engine air standard efficiency 
eta=100*((1-(1/r^(gamma1-1)))*(1/gamma1*(rho^(gamma1-1)/(rho-1))));

//Output
printf('cut-off ratio= %f \n',rho);
printf('diesel engine air standard efficiency= %f percent \n',eta);
