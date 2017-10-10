//ques-25.14
//Calculating pressure for ammonia gas using ideal gas equation and van der Waals equation
clc
n=0.6;//moles of NH3
V=3;//volume (in L)
T=273+25;//temperature (in K)
a=4.17;//(in L^2 atm/mol^2)
b=0.0371;//(in L/mol)
//Van der Waal's
P1=(n*0.0821*T)/(V-n*b)-(a*n^2)/V^2;
//Ideal Gas'
P2=(n*0.0821*T)/V;
printf("The value of pressure according to ideal gas equation is %.3f atm and according to van der Waals equation is %.3f atm.",P2,P1);
