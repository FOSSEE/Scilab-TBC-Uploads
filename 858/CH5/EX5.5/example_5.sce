clc
clear 
printf("example 5.5 page number 173\n\n")

//to find the rate of heat loss through pipeline
//resistance by pipeline

d1=0.15   //in m
d2=0.16   //in m
l=1   //in m
A1=3.14*d1*l;
A2=3.14*d2*l
Am1=(A2-A1)/log (A2/A1);
x1=(d2-d1)/2;
k1=50   //in W/mK
R1=x1/(k1*Am1);

//resistance by insulation
d2=0.16   //in m
d3=0.26   //in m
l=1   //in m
A2=3.14*d2*l;
A3=3.14*d3*l
Am2=(A3-A2)/log (A3/A2);
x2=(d3-d2)/2;
k2=0.08   //in W/mK
R2=x2/(k2*Am2);
R=R1+R2;

printf("total resistance = %f K/W",R)

T1=120;   //in K
T2=40;   //in K
delta_T=T1-T2;
Q=delta_T/R;

printf("\n\nheat loss = %f W/m",Q)
