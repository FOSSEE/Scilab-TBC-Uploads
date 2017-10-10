//ques-18.45
//Calculating change in chemical potential of a substance
clc
P1=1; P2=0.5;//partial pressure (in atm)
T=298;//temperature (in K)
C_P=8.314*T*log(P2/P1);
printf("The change in chemical potential is %.4f kJ/mol.",C_P/1000);
