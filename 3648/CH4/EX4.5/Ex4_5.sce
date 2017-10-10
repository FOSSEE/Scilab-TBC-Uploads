//Example 4_5
clc();
clear;
//To find the acceleration of the masses
w1=10   //units in Kg
w2=5   //units in Kg
f1=98   //units in Newtons
f2=49   //units in Newtons
w=w1/w2
T=round((f1+(w*f2))/(w+1))   //units in Newtons
a=(f1-T)/w1   //units in meters/sec^2
printf("Acceleration is a=%.1f meters/sec^2",a)
