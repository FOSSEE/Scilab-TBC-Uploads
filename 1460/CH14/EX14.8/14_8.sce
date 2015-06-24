clc
//initialization of variables
e=0.8
T1=100+460 //R
T2=300+460 //R
//calculations
Qdot=0.173*10^-8 *(T2^4 - T1^4)/(1/e +1/e -1)
//results
printf("Radiant heat transfer per sq. foot = %d B/hr-ft^2",Qdot+1)
