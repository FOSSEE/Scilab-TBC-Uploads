clc;
clear;
//Example 4.20
sigma=5.67*10^-8    //[W/sq m.K^4]
T1=750  //[K]
T2=500  //[K]
e1=0.75;
e2=0.5;
//Heat transfer without shield :

Q_by_a=sigma*(T1^4-T2^4)/((1/e1)+(1/e2)-1)  //[W/sq m]

//Heat transfer with shield:
R1=(1-e1)/e1    //Resistance 1

F13=1;
R2=1/F13        //Resistance 2

e3=0.05
R3=(1-e3)/e3    //Resistance 3

R4=(1-e3)/e3    //Resistance 4

F32=1;
R5=1/F32        //Resistance 5

R6=(1-e2)/e2       //Resistance 6

Total_R=R1+R2+R3+R4+R5+R6   //Total resistance

Q_by_as=sigma*(T1^4-T2^4)/Total_R   //[W/sq m]

Red=(Q_by_a-Q_by_as)*100/Q_by_a     //Reduciton in heat tranfer due to shield 

printf("\n Reduction in heat transfer rate as a result of radiaiotn shield is %f percent",Red);
