clc
//Initialization of variables
T1=70  //F
T2=140 //F
m=10 //lb
Cp=1 //B/lbm F
//calculations
Q=Cp*(T2-T1)
Qdot=m*Q
w=0
//results
printf("Work done = %d",w)
printf("\n Change in enthalpy= %d",Qdot)
printf("\n Heat added per pound = %d ",Q)
