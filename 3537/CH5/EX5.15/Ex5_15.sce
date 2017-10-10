//Example 5_15
clc();
clear;
//To find the glancing angle for the second order diffraction
d100=0.28              //units in nm
n=2
lamda=0.071           //units in nm
d110=d100/sqrt(2)
theta=asin(( n*lamda)/(2*d110))*180/%pi
printf("The glancing angle is %d degrees",theta)
