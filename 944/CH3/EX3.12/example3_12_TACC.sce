//example 3.12

clear;
clc;

disp("CO(g)+NO(g)->0.5N2(g)+CO2(g)");
//Given:
Hrxn=-374;//standard heat of reaction[KJ/mol]
Hno=90.25;//standard heat of formation of NO[KJ/mol]
Hco2=-393.51;//standard heat of formation of CO2[KJ/mol]
Hn2=0;//standard heat of formation of N2[KJ/mol]
T=298;//temperature of reaction [K]

//to find the value of standard heat of formation of CO
Hco=0.5*Hn2+Hco2-Hno-Hrxn;//standard heat of formation of CO[KJ/mol]
printf("Hco(standard heat of formation)=%f KJ/mol",Hco);