//ques-16.15
//Calculating activation energy for the reaction
clc
k2=5.16*10^4; k1=3.76*10^3;
T2=1125; T1=1085;//temperature (in K)
Ea=(log10(k2/k1)*2.303*8.314*T1*T2)/(T2-T1);//activation energy
printf("Activation energy for the reaction is %d J/mol.",Ea);
