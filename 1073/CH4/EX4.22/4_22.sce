
clc;
clear;
//Example 4.22
sigma=5.67*10^-8;
T1=1273 //[K]
T2=773  //[K]
T3=300  //[K]
A1=0.5  //[sq m]
A2=A1;  //[sq m]
F12=0.285;
F21=F12;
F13=1-F12;
F23=1-F21;
e1=0.2;
e2=0.5;
//Resistance in the network are calculated as:
R1=1-e1/(e1*A1)
R2=1-e2/(e2*A2)
R3=1/(A1*F12)
R4=1/(A1*F13)
R5=1/(A2*F23)
R6=0    //Given (1-e3)/e3*A3=0
//Also
Eb1=sigma*T1^4  //W/sq m
Eb2=sigma*T2^4   //[W/sq m]
Eb3=sigma*T3^4 //[W/sq m]

//Equations are:
//(Eb1-J1)/2+(J2-J1)/7.018+(Eb3-J1)/2.797=0
//(J1-J2)/7.018+(Eb3-J2)/2.797+(Eb2-J2)/2=0

//On solving we get:
J1=33515    //[W/sq m]
J2=15048    //[W/sqm]
J3=Eb3  //[W/sq m]
Q1=(Eb1-J1)/((1-e1)/(e1*A1))        //[W/sq m]
Q2=(Eb2-J2)/((1-e2)/(e2*A2))        //[W/sq m]
Q3=(J1-J3)/(1/(A1*F13))+(J2-J3)/(1/(A2*F23))    //[W/sq m]
printf("\n Total heat lost by plate 1 is %f W/sq m\n",Q1);
printf("\n Total heat lost by plate 2 is %f W/sq m\n",Q2);
printf("\nThe net energy lost by both plates must be absorbed by the room,\n %f=%f",Q3,Q1+Q2)

