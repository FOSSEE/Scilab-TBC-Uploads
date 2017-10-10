//ques-6.17
//Calculating heat of the reaction at 298 K
clc 
E1=0.6915;//emf of cell at 273 K (in V)
E2=0.6753;//emf of cell at 298 K (in V)
F=96500;//(in C)
T=298;//temperature (in K)
n=2;//electrons involved
z=(E2-E1)/(T-273);//change in emf w.r.t temperature
H=2*F*(T*z-E2);
printf("The heat of the reaction is %.3f kJ.",H/1000);
