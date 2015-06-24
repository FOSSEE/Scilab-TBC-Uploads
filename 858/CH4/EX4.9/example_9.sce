clc
clear 
printf("example 4.9 page number 138\n\n")

//to find the flow properties
d1=0.05   //in m
A1=(3.14*d1^2)/4;
density_1=2.1   //in kg/m3
u1=15     //in m/s
P1=1.8;   //in bar
P2=1.3;   //in bar

w=density_1*A1*u1;
density_2=density_1*(P2/P1);
printf("density at section 2 = %f kg/cubic meter",density_2)

u2=u1*(density_1/density_2)*(0.05/0.075)^2;
printf("\n\nvelocity at section 2 = %f m/s",u2)
