//Example 2_1
clc();
clear;
//To calculate the number of lines in one centimeter of granting surface
lemda=5*10^-5                           //units in centimeters
theta=30                               //units in degrees
k=2
e=(k*lemda)/sin(theta*%pi/180)
n=e^-1
printf("no of lines per centimeter is %.0f",n)
//in text book the answer is printed wrong as 1000 correct answer is 5000 
