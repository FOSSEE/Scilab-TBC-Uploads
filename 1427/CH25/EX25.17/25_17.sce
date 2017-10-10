//ques-25.17
//Calculating pressure for carbon dioxide using ideal gas equation and van der Waals equation
clc
V=8;//volume (in L)
m=88;//mass of CO2 (in g)
M=44;//molar mass of CO2 (in g/mol)
T=273+27;//temperature (in K)
a=3.6;//(in L^2 atm/mol^2)
b=0.043;//(in L/mol)
R=0.0821;//(in L atm/K/mol)
n=m/M;//moles of CO2
//Ideal Gas equation
P1=(n*R*T)/V;
//Van der Waals equation
P2=(n*R*T)/(V-n*b)-(a*n^2)/V^2;
printf("The pressure for carbon dioxide using ideal gas equation is %.2f atm and using van der Waals equation is %.3f atm.",P1,P2);
