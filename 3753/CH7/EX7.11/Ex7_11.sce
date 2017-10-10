//Example number 7.11, Page number 7.17

clc;clear;close

// Variable declaration
lamda=0.842 // in m
n1=1 // unitless
q=(8+(35/60))*(%pi/180) // unitless
n2=3 // unitless
d=1 // in m
// Calculations
// n*lamda=2*d*sin(theta)
// n1*0.842=2*d*sin(q)
// n3*0.842=2*d*sin(theta3)
// Dividing both the eauations, we get
// (n2*lamda)/(n1*lamda)=2*d*sin(theta3)/2*d*sin(q)
theta3=asin((((n2*lamda)/(n1*lamda))*(2*d*sin(q)))/(2*d)) // radian
d=theta3*180/%pi; // in m
a_d=int32(d); // // unitless
a_m=(d-int(d))*60 // // unitless

// Result
printf("sin(theta3) = %.f or %.3f ",a_d,a_m)
