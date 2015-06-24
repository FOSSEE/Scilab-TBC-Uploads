//example 5.1

clear;
clc;

//given:
T1=373;//initial temperature [K]
T2=573;//final temperature [K]
Q2=750;//Heat absorbed by carnot engine[J]

//to find the workdone , heat rejected , and efficiency of the engine
e=(T2-T1)/T2;//efficiency of the engine
W=e*Q2;//Workdone by the engine[J]
Q1=T1*Q2/T2;//Heat rejected by the engine[J]

printf("Efficiency of the engine = %f ", e);
printf("\n Workdone by the engine = %f J", W);
printf("\n Heat rejected by the engine = %f J", Q1);
