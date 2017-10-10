//ques-18.28
//Calculating heat of reaction in terms of calories
clc
K1=1.64*10^-4; K2=0.144*10^-4;//equilibrium constant (in atm)
T1=273+400; T2=273+500;//temperature (in K)
R=1.987;//cal/mol/K
H=(log10(K2/K1)*2.303*R*T1*T2)/(T2-T1);
printf("The heat of the reaction is %.2f kcal/mol.",H/1000);
