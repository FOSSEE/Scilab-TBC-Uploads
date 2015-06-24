clc
clear 
printf("example 5.4 page number 173\n\n")

//to find the heat loss from composite wall
//for the red brick layer

x1=0.250;  //in m
k1=0.7;  //in W/mK
A1=1;   //in m2
R1=x1/(k1*A1);   //in K/W

//for the felt layer
x2=0.020;  //in m
k2=0.046;  //in W/mK
A2=1;   //in m2
R2=x2/(k2*A2);   //in K/W
R=R1+R2;
printf("Total resistance = %f K/W",R)

T1=110;   //in K
T2=25    //in K
delta_T=T1-T2;
Q=delta_T/R;
printf("\n\nheat loss through wall = %f W/square m",Q)
