//Example 4_11
clc();
clear;
//To find the acceleration of the system
w1=7   //units in Kg
a=9.8   //units in meters/sec^2
w2=5   //units in Kg
w=w1/w2
F1=29.4   //units in Newtons
F2=20   //units in Newtons
f=(F1+F2)    //units in Newtons
T1=w1*a    //units in Newtons
T=(T1+(w*f))/(1+w)    //units in Newtons
a=((w1*a)-T)/w1   //units in meters/sec^2
printf("Acceleration a=%.2f meters/sec^2",a)
