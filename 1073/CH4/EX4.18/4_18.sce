

clc;
clear;
//Example 4.18


sigma=5.67*10^-8 ;   //[W/(sq m.K^4)]
T1=813;  //[K]
T2=473;  //[K]
e1=0.87;
e2=0.26;
D1=0.25 ;//[m]
D2=0.3; //[m]
Q_by_a1=sigma*(T1^4-T2^4)/(1/e1+(D1/D2)*(1/e2-1))   //[W/ sqm]
printf("\n Heat transfer by radiaiton is %d W/sq m",Q_by_a1);
