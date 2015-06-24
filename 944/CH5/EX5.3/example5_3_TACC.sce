//example 5.3

clear;
clc;

//Given:
T1=323;//temperature [K]
T2=423;//temperature [K]
W=1.3;//work [KJ]


//To find the minimum heat required from heat source to yield the above work
e=(T2-T1)/T2;//efficiency
Q2=W/e;//minimum heat withdrawal from heat source[KJ]
printf("Minimum heat withdrawal from heat source=%f KJ",Q2);