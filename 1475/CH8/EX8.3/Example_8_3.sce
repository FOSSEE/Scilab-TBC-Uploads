// Given that the crude death rate of standard population 
clc;
clear;
P=[9736 8349 17101 37298 20746 6298 472 ];
M=[8.90 1.19 1.07 2.22 5.21 6.32 38.98];
CDR_std_pop=37.4
CDR_city=37.14+(10/100)*37.4;
disp(sum(P),"Total Population of city A = ",M,"Mortality of Standard Population =",CDR_city,"CDR Death Rate of City=",CDR_std_pop,"CDR Death Rate of Standard Population ");
PxMx_Mx=(sum(P.*M)/sum(P));
//disp(PxMx_Mx)
Adj_fact=(CDR_std_pop)/(PxMx_Mx*10);
Adj_Death_rate=CDR_city*(Adj_fact);
disp(Adj_Death_rate,"Adjusted Death Rate= ");


