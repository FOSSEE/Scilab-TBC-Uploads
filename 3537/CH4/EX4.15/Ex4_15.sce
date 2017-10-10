//Example 4_15
clc();
clear;
//To find miller indices
n=1
lamda=0.82*10^-10   //units in meters
theta=75.86 //units in degrees
d=(n*lamda)/(2*sin(theta*%pi/180))
d=d*10^11
printf("obtained d value is d=%dA",d)
printf("\n As rounding of d equal to 3 A that is d=a miller indices that are possible are (0,0,1),(0,1,0),(1,0,0)")
