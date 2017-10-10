//Example 2_2
clc();
clear;
//Find the difference in angles of deviation in first and third order spectra
lamda=5000       //units in armstrongs
lamda=lamda*10^-8             //units in cm
e=1/6000
//For first order e*sin(theta1)=1*lamda
theta1=asin(lamda/e)   //units in radians
theta1=theta1*180/%pi   //units in degrees
printf("For First order spectra theta1=%.1f degrees",theta1)
//For third order e*sin(theta3)=3*lamda
theta3=asin(3*lamda/e)   //units in radians
theta3=theta3*180/%pi   //units in degrees
printf("\nFor Third order spectra theta3=%.1f degrees",theta3)
diffe=theta3-theta1       //units in degrees
printf("\nDifference in Angles of deviation in first and third order spectra is theta3-theta1=%.2fdegrees",diffe)
