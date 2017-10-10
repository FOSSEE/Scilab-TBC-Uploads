//ques-16.14
//Calculating energy of activation of the reaction
clc
T1=300; T2=350;//temperature (in K)
t1=20; t2=5;//time (in min)
//1st order reaction
k1=0.6932/t1; k2=0.6932/t2//(in /min)
Ea=(log10(k2/k1)*2.303*8.314*T1*T2)/(T2-T1);//energy of activation
printf("Energy of activation of the reaction is %d J/mol.",Ea);
