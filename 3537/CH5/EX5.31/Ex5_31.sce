//Example 5_31
clc();
clear;
//To find the lattice parameter and atomic diameter
lamda=0.171  //units in nm
theta1=30   //units in degrees
theta2=35.283   //units in degrees
d100=lamda/(2*sin(theta1*%pi/180))
d200=lamda/(2*sin(theta2*%pi/180))
h=1
k=1
l=0
alpha1=d100*sqrt(h^2+k^2+l^2)
alpha2=d200*sqrt(h^2+k^2+l^2)
printf("As alpha1 != alpha2 that is %.3f!=%.3f \tMetal is not bee",alpha1,alpha2)
a=0.296  //units in nm
diam=a/(sqrt(h^2+k^2+l^2))
printf("\nAtomic diameter is a=%.2f nm",diam)
