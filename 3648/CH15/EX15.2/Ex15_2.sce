//Example 15_2
clc();
clear;
//To find the force on the center charge
k=9*10^9    //Units in N meter^2/C^2
q1=4*10^-6    //Units in C
q2=5*10^-6   //Units in C
r1=2         //Units in meters
r2=4     //Units in meters
q3=6*10^-6     //Units in C
f1=(k*q1*q2)/r1^2       //Units in N
f2=(k*q2*q3)/r2^2       //Units in N
f=f1-f2       //Units in C
printf("The force on the center charge is=%.5f N",f)
