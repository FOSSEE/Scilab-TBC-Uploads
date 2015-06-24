//calculation of activation energy from rate constant and Temperature data

clear;
clc;

printf("\t Example 13.8\n");

R=8.314;//gas constant, kJ/mol
T=[700,730,760,790,810];//temperature(data given), K
x=T^-1;//1/T values corresponding to Temp values above, K-1
k=[0.011,0.035,0.105,0.343,0.789];//rate constant(data given) in 1/M^1/2 s corresponding to temperature values
lnk=log(k);//lnk values corresponding to k
[slope]=reglin(x,lnk);//lnk=-Ea/(R*T)+lnA, slope of the line between lnk and 1/T gives -Ea/R value 
Ea=-slope*R;//activation energy, kJ/mol

printf("\t the activation energy for the decomposition is : %4.2f*10^2 kJ/mol\n",Ea*10^-5);

//End
