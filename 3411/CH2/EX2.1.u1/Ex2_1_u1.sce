//Example 2_1_u1
clc();
clear;
//To calculate the no of lines in one cm of grating surface
k=2
lamda=5*10^-5     //units in cm
theta=30          //units in degrees
//We have nooflines=1/e=(k*lamda)/sin(theta)
nooflines=sin(theta*%pi/180)/(k*lamda)            //units in cm
printf("No of lines per centimeter is %.f",nooflines)
//In text book the answer is printed wrong as 10^3
//The correct answer is 5*10^3
