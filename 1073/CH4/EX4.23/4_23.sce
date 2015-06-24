clc;
clear;
//Example 4.23
sigma=5.67*10^-8    //[W/sq m.K^4]
e1=0.7;
e2=0.7;
T1=866.5    //[K]
T2=588.8    //[K]
Q_by_A=sigma*(T1^4-T2^4)/((1/e1)+(1/e2)-1)  //[W/sq m]
e1=0.7;
e2=e1;
e3=e1;
e4=e1;
e=e1;
//Q with n shells =1/(n+1)
n=2
Q_shield=1/(n+1);
es1=e1;
es2=e1;
Q_by_A=sigma*(T1^4-T2^4)/((1/e1)+(1/e2)+2*(1/es1+1/es2)-(n+1))  //[W/sq m]
printf("\n New Radiaiton loss is %f W/sq m",Q_by_A);

