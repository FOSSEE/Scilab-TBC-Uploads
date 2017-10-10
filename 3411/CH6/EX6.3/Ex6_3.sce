//Example 6_3
clc();
clear;
//To calculate the electric field intensity a a point
r=6*10^-6     //units in mts
i=(1*10^-3)/(%pi*r^2)     //units in W/met^2
c=3*10^8   //units in mts/sec
u=4*10^-7       //units in SI
n=1
E=sqrt((i*2*c*u)/n)    //units in V/mts
printf("The electric field intensity a a point is given by E=%.2f V/mts",E)
//In text book answer is given E=8.1*10^4 V/m but the correct answer is E=46065.89 V/m 
