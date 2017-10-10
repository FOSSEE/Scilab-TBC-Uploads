////Chapter No 14 Air Standard Cycles
////Example No 14.11 Page No 316
///Find diesel engine air standard efficiency
//input data
clc;
clear;
r=18;   //compression ratio of diesel engine
K=6;    //cut-off ratio of the stroke in%
rho=2.02; 
gamma1=1.4;

///Calculation
//diesel engine air standard efficiency
eta=100*((1-(1/r^(gamma1-1)))*(1/gamma1*(rho^(gamma1-1)/(rho-1))));

//Output
printf('diesel engine air standard efficiency %f percent \n',eta);
