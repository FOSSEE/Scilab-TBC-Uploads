clc;
clear;
//Example4.11
sigma=5.67*10^-8    //W/(m^2.K^4)
e1=0.3;
e2=e1;
D1=0.3  //[m]
D2=0.5  //[m]
T1=90   //[K]
T2=313  //[K]
A1=%pi*D1^2 //Area in [sq m]
A2=%pi*D2^2//Area in [sq m]
Q1=sigma*A1*(T1^4-T2^4)/(1/e1+(A1/A2)*(1/e2-1))  //[W]
Q1=abs(Q1); //Absolute value in [W]
printf("\n Rate of heat flow due to radiation is %f W",Q1);
//When Aluminium is used
e1=0.05
e2=0.5
Q2=sigma*A1*(T1^4-T2^4)/(1/e1+(A1/A2)*(1/0.3-1))  //[W]
Q2=abs(Q2) //Absolute value in [W]
Red=(Q1-Q2)*100/Q1  //Percent reduction
printf("\n Reduction in heat flow will be %f percent ",Red);
