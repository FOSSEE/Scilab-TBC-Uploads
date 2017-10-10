//Example 2_2
clc();
clear;
//To find the difference in the angles of deviation in the first and third spectra
lemda=5000*10^-8             //units in meters
e=1/6000
theta1=asin(lemda/e)*180/%pi       //for first order
theta2=asin((3*lemda)/e)*180/%pi   //for third order
theta=(theta2-theta1)
printf("The difference in the angles of deviation is %.1f degrees",theta)
