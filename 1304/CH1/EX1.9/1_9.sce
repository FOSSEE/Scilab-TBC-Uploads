clear;
clc;
printf("\t\t\tExample Number 1.9\n\n\n");
// calculating increasing in emmisive power
// solution

sigma= 5.6697*10^(-8);// [W/m^2 K^4] Stefan Boltzmann constant
T1=20+273.15;//[K] initial temperature

T2=100+273.15;//[K] final temperature
//emmissive power E is given as sigma*T^4
//hence 
dE = sigma*((T2)^(4)-(T1)^(4));//[W/m^2] difference in emmissive power

printf("The increase in emmissive power of the blackbody after heating is %f W/m^2",dE);
