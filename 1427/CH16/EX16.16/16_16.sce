//ques-16.16
//Calculating energy of activation of the reaction
clc
k1=7*10^-7; k2=9*10^-4;//rate constant
T1=280; T2=330;//temperature (in K)
Ea=(log10(k2/k1)*2.303*1.987*T1*T2)/(T2-T1);//energy of activation
printf("Energy of activation of the reaction is %.3f kcal/K.",Ea/1000);
