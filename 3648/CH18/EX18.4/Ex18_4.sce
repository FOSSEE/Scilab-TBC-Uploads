//Example 18_4
clc();
clear;
//To calculate the value of B at a radial distance of 5 cm
u=4*%pi*10^-7      //Units in T m/A
i=30       //Units in A
r=0.05         //Units in Meters
b=(u*i)/(2*%pi*r)         //Units in T
b=b*10^4          //Units in G
printf("The value of B is=%.2f G",b)
