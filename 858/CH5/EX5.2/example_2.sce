clc
clear 
printf("example 5.1 page number 171\n\n")

//to find the heat loss

d1=0.15   //in m
d2=0.16   //in m
l=1   //in m

A1=3.14*d1*l;
A2=3.14*d2*l
Am=(A1-A2)/log (A1/A2);

T1=120;   //in K
T2=119.8;   //in K

delta_T=T1-T2;
x=(d2-d1)/2;
k=50   //in W/mK
Q=k*Am*(delta_T/x);

printf("rate of heat loss per unit length = %f W/m",Q)
