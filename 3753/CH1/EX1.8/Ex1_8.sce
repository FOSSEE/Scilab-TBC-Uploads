//Example number 1.8, Page number 1.37

clc;clear;close


//Variable declaration
lamda=5890*10**-10 // in m
mu=1.5 // unitless
theta=60*%pi/180     //Converting in to degrees

//Calculation

t=(lamda)/(2*mu*(cos(theta))) // in m
         
//Result
printf("Smallest thickness of plate,t=%0.4e m",t)
