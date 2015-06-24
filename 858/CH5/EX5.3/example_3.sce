clc
clear 
printf("example 5.3 page number 172\n\n")

//to find the rate of heat loss

ri=0.5   //in m
ro=0.6;  //in m
A1=4*3.14*ri^2;
A2=4*3.14*ro^2;

Am=(A1*A2)^0.5;

Ti=140;    //in K
To=50;    //in K
delta_T=Ti-To;
x=0.1   //in m
k=0.12    //in W/mK

Q=k*Am*(delta_T/x);
printf("Heat loss through sphere = %f W",Q)
