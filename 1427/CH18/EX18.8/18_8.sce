//ques-18.8
//Calculating heat of combustion of ethene at constant pressure
clc
T=17;//temperature (in degree celsius)
E=-332.19;//heat of combustion at constant volume (in kcal)
R=0.001987;//in kcal/K/mol
n=2-(1+3);//difference in gaseous vapours
H=E+n*R*(T+273);//heat of combustion at constant pressure
printf("Heat of combustion of ethene at constant pressure is %.3f kcal/mol.",H);
