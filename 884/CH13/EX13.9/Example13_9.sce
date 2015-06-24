//calculation of rate constant at a given temperature

clear;
clc;

printf("\t Example 13.9\n");

k1=3.46*10^-2;//rate constant at T1
T1=298;//temp K
T2=350;//temp K
R=8.314;//gas constant,J/K mol
Ea=50.2*1000;//activation energy, J/mol
k2=k1/exp(Ea/R*(T1-T2)/(T1*T2));//from equation ln(k1/k2)=Ea*(T1-T2)/(T1*T2*R), S-1

printf("\t the rate constant at temp 350 is : %4.3f s-1\n",k2);

//End
