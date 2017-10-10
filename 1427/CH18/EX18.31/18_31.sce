//ques-18.31
//Calculating entropy change in given state of system
clc
n=1;//moles of ideal gas
Cv=12.55;//calorific volume (in J/K/mol)
T1=298; T2=233;//temperature (in K)
P1=2; P2=0.4;//pressure (in atm)
R=8.314;//in J/K/mol
S=n*Cv*log(T2/T1)-n*R*log(P2/P1);
printf("The entropy change is %.3f J/K/mol.",S);
