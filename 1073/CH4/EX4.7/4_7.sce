clc;
clear;
//Example 4.7
sigma=5.67*10^-8    //[W/sq m.K^4]
T1=703  //[K]
T2=513  //[K]
e1=0.85 
e2=0.75
Q_by_Ar=sigma*(T1^4-T2^4)/(1/e1+1/e2-1) //[W/sq m]
printf("\n Net radiant interchange per square metre is %d W/sq m",round(Q_by_Ar));
