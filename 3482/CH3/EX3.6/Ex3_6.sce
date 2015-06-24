clc;
//Given data
// Moment arms
Fx=-30;//in lb
Fy=20;//in lb
Fz=20;//in lb

//couple Forces 
x=18;//iN
y=12;//iN
z=9;//iN

Mx=Fx*x;//N.m, Component of Moment along X axis
My=Fy*y;//N.m, Component of Moment along Y axis
Mz=Fz*z;//N.m, Component of Moment along Z axis
//This three moments represent component of single couple M 
printf("Couple M equivalent to two couple can be written as \n M = %.2f lb-in i + %.2f lb-in j + %.2f lb-in k \n",Mx,My,Mz);
