clc;
//Given data
// Moment arms
x=0.45;//m
y=0.30;//m
z=0.23;//m

//couple Forces 
Fx=-150;//N
Fy=100;//N
Fz=100;//N

Mx=Fx*x;//N.m, Component of Moment along X axis
My=Fy*y;//N.m, Component of Moment along Y axis
Mz=Fz*z;//N.m, Component of Moment along Z axis
//This three moments represent component of single couple M 
printf("Couple M equivalent to two couple can be written as M = %.2f N.m i + %.2f N.m j + %.2f N.m k \n",Mx,My,Mz);
