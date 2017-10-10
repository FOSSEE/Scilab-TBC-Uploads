//Example 5_14
clc();
clear;
//To clculate the inter frame spacing
lamda=1.5418*10^-10  //units in mts
theta=30   //units in degrees
d=lamda/(2*sin(theta*%pi/180))
d=d*10^10   //units in A
h=1
k=1
l=1
a=d*sqrt(h^2+k^2+l^2)
printf("The inter frame spacing is a=%.2f A",a)
