//ques-25.1
//Finding pressure exerted in a vessel
clc
m1=2;//mass of ethane given (in g)
m2=3;//mass of CO2 given (in g)
M1=30;//molar mass of ethane (in g/mol)
M2=44;//molar mass of CO2 (in g/mol)
V=5;//volume of vessel (in L)
T=273+50;//temperature (in K)
R=0.0821;//(in atm L/K/mol)
n=m1/M1+m2/M2;//moles of gas
P=(n*R*T)/V;//pressure
printf("The pressure exerted in the vessel is %.4f atm.",P);
