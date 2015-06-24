
clc;
clear;
//Example 4.12
sigma=5.67*10^-8    //[W/sq m.K^4]
T1=77   //[K]
T2=303  //[K]
D1=32   //cm
D1=D1/100   //[m]
D2=36   //[cm]
D2=D2/100   //[m]
A1=%pi*D1^2 //[sq m]
A2=%pi*D2^2 //[sq m]
e1=0.03;
e2=e1;
Q=sigma*A1*(T1^4-T2^4)/(1/e1+(A1/A2)*(1/e2-1))  //[W]
Q=Q*3600/1000   //[kJ/h]
Q=abs(Q);   //[kJ/h]
lambda=201  //kJ/kg
m_dot=Q/lambda  //Evaporation rate in [kg/h]
printf("\n Nitrogen evaporates at %f kg/h",m_dot);

