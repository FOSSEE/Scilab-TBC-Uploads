//Example 17_9
clc();
clear;
//To find the current I in the battery
r1=3  //Units in Ohms
r2=6    //Units in Ohms
rbc=(r1*r2)/(r1+r2) //Units in Ohms
r3=4 //Units in Ohms
rac=r3+rbc         //Units in Ohms
v=12     //Units in V
i=v/rac         //Units in A
printf("The current I=%d A",i)
