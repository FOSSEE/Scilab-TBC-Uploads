clc;
clear;
//Example 4.21
e1=0.3
e2=0.8
//Let sigma*(T1^4-T2^4)=z=1(const)
z=1;    //Let
Q_by_A=z/(1/e1+1/e2-1)  //W/sq m

//Heat transfer with radiation shield 
e3=0.04
F13=1;
F32=1;
//The resistances are:
R1=(1-e1)/e1
R2=1/F13
R3=(1-e3)/e3
R4=R3
R5=1/F32
R6=(1-e2)/e2
R=R1+R2+R3+R4+R5+R6     //Total resistance
Q_by_As=z/R //where z=sigma*(T1^4-T2^4) //W/sq m
red=(Q_by_A-Q_by_As)*100/Q_by_A    //Percent reduction in heat transfer
printf("\n The heat transfer is reduced by %f percent due to shield",red)
