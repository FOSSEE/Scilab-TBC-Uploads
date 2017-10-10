//Example 4_10
clc();
clear;
//To calculate the tension in the rope
u=0.7
sintheta=(6/10)
w1=50   //units in Kg
g=9.8   //units in meter/sec^2
costheta=(8/10)
Fn=w1*g*costheta    //units in Newtons
f=u*Fn   //units in Newtons
T=f+(w1*g*sintheta)
printf("The tension in the rope is T=%d N",T)
