clc;
clear;
//Example 4.15
sigma=5.67*10^-8    //[W/(m^2.K^4)]
e1=0.4
e3=0.2
T1=473  //[K]
T3=303  //[K]
Q_by_a=sigma*(T1^4-T3^4)/((1/e1)+(1/e3)-1)  //[W/sq m]
//Q1_by_a=sigma*(T1^4-T2^4)/((1/e1)+(1/e2)-1)=sigma*A*(T2^4-T3^4)/((1/e2)+(1/e3)-1) //[W/sq m]
e2=0.5
//Solving we get
T2=((6/9.5)*((3.5/6)*T3^4+T1^4))^(1/4)  //[K]
Q1_by_a=sigma*(T1^4-T2^4)/((1/e1)+(1/e2)-1) //[W/sq m]
red=(Q_by_a-Q1_by_a)*100/Q_by_a
printf("\nHeat transfer rate per unit area(WITHOUT SHIELD) due to radiation is %f W/sq m\n",Q_by_a);
printf("\nHeat transfer rate per unit area(WITH SHIELD) due to radiation is %f W/sq m\n",Q1_by_a);
printf("\nReduction in heat loss is %f percent",red);

