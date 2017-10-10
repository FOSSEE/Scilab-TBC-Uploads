//Example number 1.16, Page number 1.39
clc;clear;close


//Variable declaration
theta=90*%pi/180    //theta=90 degrees to get maximum number of orders assume
lamda=5890*10**-10 // in m
aplusb=2*10**-6       //micro mts to mts 

//Calculation
n=(aplusb*sin(theta))/lamda // order

//Result
printf("Maximum number of orders=%d",n)
