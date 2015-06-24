clc;
clear;
sigma=5.67*10^-8    //[W/sq m.K^4]
e1=0.05 
e2=0.05
//A1=A2=1 (let)
A1=1;
A2=A1;
F12=1/(1/e1+(A1/A2)*(1/e2-1))   
T1=368  //[K]
T2=293  //[K]
Q_by_A=sigma*F12*(T1^4-T2^4)    //Heat loss per unit Area  [W/sq m]
printf("\nRate of heat loss when of silvered surface is %f W/sq m",Q_by_A);
//When both the surfaces are black
e1=1;
e2=1;
F12=1/(1/e1+(A1/A2)*(1/e2-1))   
Q_by_A=sigma*F12*(T1^4-T2^4)    //[W/sq m]
printf("\n When both surfaces are black,Rate of heat loss  is %d W/sq m",round(Q_by_A));
