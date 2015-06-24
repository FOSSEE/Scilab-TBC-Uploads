clear
clc
Cp=40;
Hr=80000;
m=Cp/Hr;
FAo=100;//mol/s
//Drawing various adiabatics on graph given in Fig 19.11,
//We see from fig E 19.2 a ,that this gives very shallow adiabatic,As rate continually increase as you move along htis adiabatic
disp('We should use a mixed flow reactor operating at optimum')
XA=[0.85;0.785;0.715;0.66;0.58;0.46];
inv_rAopt=[20;10;5;3.6;2;1];
plot(XA,inv_rAopt)
xlabel('XA');ylabel('rA^-1');
//Using method of maximization of rectangles
area1=0.66*3.6;
area2=(0.85-0.66)*20;
W1=FAo*area1;
W2=FAo*area2;
printf("\n The weight of catalyst needed for 1st bed is %f",W1)
printf("kg \n The weight of catalyst needed for 2ndbed is %f",W2)
printf("kg")
//Heat exchange
//For the first reactor
//To go to 66% conversion at 820 degree C,the amount of heat needed per mol of A is
Q=(820-300)*Cp+0.66*(-Hr);
//For 100 mol/s
Q1= FAo*Q/10^6;//MW
printf("\n The amount of heat exchanged for 1st reactor is %f",Q1)
printf("MW")
//For 2nd reactor
//To go from XA=0.66 at 820 k to XA=0.85 at 750 k
Q2=FAo*((750-820)*Cp+(0.85-0.66)*(-Hr));
Q2=Q2/10^6;
printf("\n The amount of heat exchanged for 2nd reactor is %f",Q2)
printf("MW")
//For the exchanger needed to cool the exit stream from 750 k to 300 k
Q3=FAo*Cp*(300-750);
Q3=Q3/10^6;//MW
printf("\n The amount of heat exchanged for exchanger is %f",Q3)
printf("MW")

