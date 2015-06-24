//Example 2_5_u1
clc();
clear;
//To find the angle of separation
lamda1=5016        //units in armstrongs
lamda2=5048        //units in armstrongs
lamda1=lamda1*10^-8    //units in cm
lamda2=lamda2*10^-8    //units in cm
k=2
n=15000
e=2.54/n            //units in cm
theta1=asin((2*lamda1)/e)*(180/%pi)          //units in degrees
theta2=asin((2*lamda2)/e)*(180/%pi)          //units in degrees
diffe=theta2-theta1                          //units in degrees
diffe=diffe*60                                 //units in minutes
printf("Angle of separation is %.f minutes",diffe)
