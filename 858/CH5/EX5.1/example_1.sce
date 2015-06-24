clc
clear 
printf("example 5.1 page number 171\n\n")

//to find the rate of heat loss
A=5*4   //in m2
T1=100;   //in K
T2=30;    //in K

delta_T=T1-T2;

x=0.25   //in m
k=0.70    //in W/mK
Q=k*A*(delta_T/x);

printf("rate of heat loss = %f W",Q)
