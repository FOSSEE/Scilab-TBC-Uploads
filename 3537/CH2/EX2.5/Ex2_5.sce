//Example 2_5
clc();
clear;
//To find the angle of separation
lemda1=5016*10^-8                          //units in cm
lemda2=5048*10^-8                          //units in cm
k=2
e=2.54/15000                              //units in cm
theta1=asin((2*lemda1)/e)*180/%pi
theta2=asin((2*lemda2)/e)*180/%pi
theta=(theta2-theta1)
theta=theta*100
theta=(theta*101)/60
printf("The angle of separation is %f degrees",theta)
//In text book the answer is printed wrong as 16 Minutes correct answer is 45 minutes
